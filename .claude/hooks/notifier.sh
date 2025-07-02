#!/bin/bash

# Reads a notification from stdin and speaks it using 'say' on macOS.

# Read the JSON input from stdin
input=$(cat)

# Extract the message using jq
message=$(echo "$input" | jq -r '.message')

# Check if we are on macOS
if [[ "$(uname)" == "Darwin" ]]; then
  # Use the 'say' command to speak the notification
  say "$message"
fi
