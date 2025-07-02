#!/bin/bash

# Project-specific secret scanner for Agent Loop development workflow
# Scans for hardcoded secrets, API keys, and sensitive information
# Focused on patterns relevant to AI/Claude development projects

set -e

# Read the JSON input from stdin
input=$(cat)
content=$(echo "$input" | jq -r '.tool_input.content // empty')
file_path=$(echo "$input" | jq -r '.tool_input.file_path // empty')

if [ -z "$content" ]; then
  exit 0 # No content, nothing to do
fi

# Secret patterns specific to AI/development projects
SECRET_PATTERNS=(
  # API Keys
  "sk-[a-zA-Z0-9]{48}"                    # OpenAI API keys
  "claude-[a-zA-Z0-9-]{20,}"              # Claude API keys  
  "sk_live_[a-zA-Z0-9]{24}"               # Stripe Live Key
  "sk_test_[a-zA-Z0-9]{24}"               # Stripe Test Key
  "AKIA[0-9A-Z]{16}"                      # AWS Access Key ID
  "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" # UUIDs that might be keys
  
  # Private Keys
  "-----BEGIN RSA PRIVATE KEY-----"
  "-----BEGIN OPENSSH PRIVATE KEY-----"
  "-----BEGIN DSA PRIVATE KEY-----"
  "-----BEGIN EC PRIVATE KEY-----"
  "-----BEGIN PGP PRIVATE KEY-----"
  
  # Common environment variable patterns
  "export [A-Z_]*KEY[A-Z_]*="
  "export [A-Z_]*SECRET[A-Z_]*="
  "export [A-Z_]*TOKEN[A-Z_]*="
  "export [A-Z_]*PASSWORD[A-Z_]*="
  
  # JSON key patterns
  "\"[a-zA-Z_]*[kK]ey\"[[:space:]]*:[[:space:]]*\"[a-zA-Z0-9+/]{20,}\""
  "\"[a-zA-Z_]*[sS]ecret\"[[:space:]]*:[[:space:]]*\"[a-zA-Z0-9+/]{20,}\""
  "\"[a-zA-Z_]*[tT]oken\"[[:space:]]*:[[:space:]]*\"[a-zA-Z0-9+/]{20,}\""
  
  # Database connection strings
  "mongodb://.*:.*@"
  "postgres://.*:.*@"
  "mysql://.*:.*@"
  
  # Common passwords (weak patterns)
  "password[[:space:]]*[:=][[:space:]]*[\"'][^\"']{8,}[\"']"
)

# File patterns to always scan thoroughly
SENSITIVE_FILES=(
  ".env"
  "config.json"
  "settings.json"
  ".claude"
)

# Check if this is a sensitive file that needs extra scrutiny
is_sensitive_file() {
  local filepath="$1"
  for pattern in "${SENSITIVE_FILES[@]}"; do
    if [[ "$filepath" == *"$pattern"* ]]; then
      return 0
    fi
  done
  return 1
}

# Scan for secrets
secrets_found=0
for pattern in "${SECRET_PATTERNS[@]}"; do
  if echo "$content" | grep -qE "$pattern"; then
    echo "🚨 SECURITY ALERT: Potential secret detected!" >&2
    echo "Pattern matched: '$pattern'" >&2
    echo "File: $file_path" >&2
    
    # Show context (first few characters of match for debugging)
    match=$(echo "$content" | grep -E "$pattern" | head -1 | cut -c1-50)
    echo "Context: ${match}..." >&2
    echo "" >&2
    
    secrets_found=1
  fi
done

# Additional checks for sensitive files
if is_sensitive_file "$file_path"; then
  echo "🔍 Performing enhanced security scan on sensitive file: $file_path"
  
  # Check for any long strings that might be keys (20+ alphanumeric characters)
  if echo "$content" | grep -qE "[a-zA-Z0-9]{32,}"; then
    echo "⚠️  Found long alphanumeric strings in sensitive file - please verify these are not secrets" >&2
  fi
  
  # Check for common secret variable names
  if echo "$content" | grep -qiE "(api[_-]?key|secret|token|password|credential)" && \
     echo "$content" | grep -qE "[a-zA-Z0-9]{16,}"; then
    echo "🔐 Found potential credentials in sensitive file - please review" >&2
    secrets_found=1
  fi
fi

# Block if secrets were found
if [ $secrets_found -eq 1 ]; then
  echo "" >&2
  echo "🚫 SECRET SCAN FAILED - Blocking file write to prevent credential exposure" >&2
  echo "Please remove any hardcoded secrets before proceeding." >&2
  echo "Consider using environment variables or secure secret management." >&2
  exit 2
fi

echo "✅ Security scan passed - no secrets detected"
exit 0