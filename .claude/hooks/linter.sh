#!/bin/bash

# Lints a code file using a command specified in the
# LINTER_COMMAND environment variable.
# If the variable is not set, this script does nothing.
# It blocks the tool call (exit 2) if the linter command fails.

set -e

# If LINTER_COMMAND is not set or is empty, exit silently.
if [ -z "$LINTER_COMMAND" ]; then
  exit 0
fi

# Read the JSON input from stdin
input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path')
content=$(echo "$input" | jq -r '.tool_input.content')

if [ -z "$file_path" ] || [ -z "$content" ]; then
  exit 0 # No file path or content, nothing to do
fi

# Create a temporary file to lint
tmp_file=$(mktemp)
echo "$content" > "$tmp_file"

# Execute the linter command. If it fails, exit with code 2.
if ! $LINTER_COMMAND "$tmp_file"; then
  rm "$tmp_file"
  echo "Linter command failed. Blocking tool use." >&2
  exit 2
fi

rm "$tmp_file"
exit 0
