---
allowed-tools: []
description: "Troubleshoot issues by analyzing errors, logs, and execution paths to identify root causes."
---

## Context

- The user is encountering an error or issue and needs help debugging it.

## Your Task

Based on the user's description of the error, you will troubleshoot the issue by analyzing errors, logs, and execution paths to identify the root cause.

## Process

1.  **Reproduce the Issue**: Understand steps to reproduce and gather all error messages.
2.  **Analyze Logs and Traces**: Examine stack traces, logs, and error messages for clues.
3.  **Trace Execution Path**: Follow the code flow to identify where things go wrong.
4.  **Identify Root Cause**: Determine the actual cause, not just symptoms.
5.  **Propose Fix**: Suggest specific code changes to resolve the issue.

## Examples

-   `/debug "TypeError: Cannot read property 'id' of undefined in UserService"`
-   `/debug "API returns 500 error when processing large files"`

## Notes

-   **NEVER debug without context.** Before debugging, search for similar issues in the codebase, check recent changes that might have caused the issue, use Context7 to understand the frameworks/libraries involved, and gather error logs and stack traces.
-   Focus on understanding the root cause, not just fixing symptoms.
-   Document findings for future reference.
-   Consider edge cases that might trigger the issue.