#!/bin/bash

# Project-specific auto-formatter for Agent Loop development workflow
# Formats shell scripts, JSON files, and markdown files based on file type
# Only formats when appropriate tools are available

set -e

# Read the JSON input from stdin
input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path // empty')

# If no file path, exit silently
if [ -z "$file_path" ] || [ ! -f "$file_path" ]; then
  exit 0
fi

# Function to format JSON files
format_json() {
  local file="$1"
  if command -v jq >/dev/null 2>&1; then
    # Create a temporary file for the formatted content
    local tmp_file=$(mktemp)
    if jq '.' "$file" > "$tmp_file" 2>/dev/null; then
      mv "$tmp_file" "$file"
      echo "✨ Formatted JSON file: $file"
    else
      rm -f "$tmp_file"
      echo "⚠️  Could not format JSON file (invalid syntax): $file"
    fi
  else
    echo "ℹ️  jq not available, skipping JSON formatting"
  fi
}

# Function to format shell scripts
format_shell() {
  local file="$1"
  if command -v shfmt >/dev/null 2>&1; then
    # Format with shfmt using 2-space indentation
    if shfmt -i 2 -w "$file" 2>/dev/null; then
      echo "✨ Formatted shell script: $file"
    else
      echo "⚠️  Could not format shell script: $file"
    fi
  else
    echo "ℹ️  shfmt not available, skipping shell script formatting"
    echo "💡 Install shfmt for shell formatting: brew install shfmt"
  fi
}

# Function to format markdown files
format_markdown() {
  local file="$1"
  
  # Basic cleanup: remove trailing whitespace
  if command -v sed >/dev/null 2>&1; then
    sed -i '' 's/[[:space:]]*$//' "$file"
    echo "✨ Cleaned up trailing whitespace in markdown: $file"
  fi
  
  # If prettier is available, use it for more comprehensive formatting
  if command -v prettier >/dev/null 2>&1; then
    if prettier --write "$file" 2>/dev/null; then
      echo "✨ Formatted markdown with prettier: $file"
    else
      echo "⚠️  Could not format markdown with prettier: $file"
    fi
  else
    echo "💡 Install prettier for enhanced markdown formatting: npm install -g prettier"
  fi
}

# Determine file type and format accordingly
case "$file_path" in
  *.json)
    format_json "$file_path"
    ;;
  *.sh)
    format_shell "$file_path"
    ;;
  *.md)
    format_markdown "$file_path"
    ;;
  *)
    echo "ℹ️  File type not recognized for formatting: $file_path"
    ;;
esac

exit 0