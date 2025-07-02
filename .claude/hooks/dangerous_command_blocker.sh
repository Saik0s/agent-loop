#!/bin/bash

# Blocks potentially dangerous shell commands.
# Reads tool input from stdin, checks for dangerous patterns,
# and exits with code 2 to block the command if a pattern is found.

set -e

# Read the JSON input from stdin
input=$(cat)
command=$(echo "$input" | jq -r '.tool_input.command')

# List of dangerous patterns (regex)
DANGEROUS_PATTERNS=(
  "^rm -rf /"
  "dd if=/dev/zero"
  ":(){:|:&};:" # Fork bomb
)

for pattern in "${DANGEROUS_PATTERNS[@]}"; do
  if [[ "$command" =~ $pattern ]]; then
    echo "Error: Dangerous command blocked." >&2
    echo "Command: '$command'" >&2
    echo "Reason: Matched dangerous pattern '$pattern'." >&2
    exit 2 # Block the tool call
  fi
done

exit 0 # Command is safe
