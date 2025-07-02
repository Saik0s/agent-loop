#!/bin/bash

# Scans for hardcoded secrets and blocks the tool call if found.
# Reads tool input from stdin, gets the file content, and scans for
# common secret patterns.

set -e

# Read the JSON input from stdin
input=$(cat)
content=$(echo "$input" | jq -r '.tool_input.content')

if [ -z "$content" ]; then
  exit 0 # No content, nothing to do
fi

# Regex for common secret patterns
# This is a basic example. For real use, consider tools like gitleaks.
SECRET_PATTERNS=(
  "sk_live_[a-zA-Z0-9]{24}" # Stripe Live Key
  "AKIA[0-9A-Z]{16}"       # AWS Access Key ID
  "-----BEGIN RSA PRIVATE KEY-----"
)

for pattern in "${SECRET_PATTERNS[@]}"; do
  if echo "$content" | grep -qE "$pattern"; then
    echo "Error: Potential secret detected." >&2
    echo "Pattern: '$pattern'" >&2
    exit 2 # Block the tool call
  fi
done

exit 0
