#!/bin/bash

# Project-specific linter for Agent Loop development workflow
# Validates shell scripts, JSON files, and markdown files based on file type
# Gracefully handles missing tools and provides useful feedback

set -e

# Read the JSON input from stdin
input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path // empty')
content=$(echo "$input" | jq -r '.tool_input.content // empty')

# If no file path or content, exit silently
if [ -z "$file_path" ] || [ -z "$content" ]; then
  exit 0
fi

# Create a temporary file for validation
tmp_file=$(mktemp)
echo "$content" > "$tmp_file"

# Function to validate JSON files
validate_json() {
  local file="$1"
  if command -v jq >/dev/null 2>&1; then
    if ! jq empty "$file" 2>/dev/null; then
      echo "❌ JSON validation failed: Invalid JSON syntax" >&2
      return 1
    fi
    echo "✅ JSON validation passed"
  else
    echo "⚠️  jq not available, skipping JSON validation"
  fi
  return 0
}

# Function to validate shell scripts
validate_shell() {
  local file="$1"
  
  # Basic syntax check with bash
  if ! bash -n "$file" 2>/dev/null; then
    echo "❌ Shell script syntax validation failed" >&2
    return 1
  fi
  
  # Enhanced validation with shellcheck if available
  if command -v shellcheck >/dev/null 2>&1; then
    if ! shellcheck -f gcc "$file" 2>/dev/null; then
      echo "❌ shellcheck validation failed" >&2
      return 1
    fi
    echo "✅ Shell script validation passed (shellcheck)"
  else
    echo "✅ Shell script basic syntax validation passed"
    echo "💡 Install shellcheck for enhanced validation: brew install shellcheck"
  fi
  return 0
}

# Function to validate markdown files
validate_markdown() {
  local file="$1"
  
  # Basic checks for markdown files
  if [ ! -s "$file" ]; then
    echo "❌ Markdown file is empty" >&2
    return 1
  fi
  
  # Check for basic markdown structure (at least one heading)
  if ! grep -q "^#" "$file"; then
    echo "⚠️  Markdown file has no headings"
  fi
  
  echo "✅ Markdown validation passed"
  return 0
}

# Determine file type and validate accordingly
case "$file_path" in
  *.json)
    validate_json "$tmp_file"
    result=$?
    ;;
  *.sh)
    validate_shell "$tmp_file"
    result=$?
    ;;
  *.md)
    validate_markdown "$tmp_file"
    result=$?
    ;;
  *)
    echo "ℹ️  File type not recognized for linting: $file_path"
    result=0
    ;;
esac

# Cleanup
rm -f "$tmp_file"

# Exit with appropriate code
if [ $result -ne 0 ]; then
  echo "🚫 Linting failed for $file_path. Blocking tool use." >&2
  exit 2
fi

exit 0