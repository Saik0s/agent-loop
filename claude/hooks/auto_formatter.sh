#!/bin/bash

# Auto-formats a code file using a command specified in the
# AUTO_FORMATTER_COMMAND environment variable.
# If the variable is not set, this script does nothing.

set -e

# If AUTO_FORMATTER_COMMAND is not set or is empty, exit silently.
if [ -z "$AUTO_FORMATTER_COMMAND" ]; then
  exit 0
fi

# Read the JSON input from stdin
input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path')

if [ -z "$file_path" ]; then
  exit 0 # No file path, nothing to do
fi

# Execute the formatter command with the file path as an argument
$AUTO_FORMATTER_COMMAND "$file_path"

exit 0
