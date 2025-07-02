#!/bin/bash

# Checks for unticketed TODO comments and blocks the tool call if found.
# Reads tool input from stdin, gets the file content, and checks for
# TODOs that don't have an associated ticket number.

set -e

# Read the JSON input from stdin
input=$(cat)
content=$(echo "$input" | jq -r '.tool_input.content')

if [ -z "$content" ]; then
  exit 0 # No content, nothing to do
fi

# Find all TODO comments
# The `|| true` prevents the script from exiting if grep finds no matches
todos=$(echo "$content" | grep -i "TODO" || true)

if [ -n "$todos" ]; then
  # Check if any of the TODOs are unticketed
  # This regex looks for TODO followed by (JIRA-123) or similar
  unticketed=$(echo "$todos" | grep -v -iE "TODO\([A-Z]+-[0-9]+\)" || true)

  if [ -n "$unticketed" ]; then
    echo "Error: Unticketed TODO comments found." >&2
    echo "Please associate a ticket with each TODO, e.g., TODO(PROJ-123)." >&2
    echo "Found:" >&2
    echo "$unticketed" >&2
    exit 2 # Block the tool call
  fi
fi

exit 0
