---
description: "Troubleshoot issues by analyzing errors, logs, and execution paths to identify root causes."
---

Troubleshoot issues by analyzing errors, logs, and execution paths to identify root causes.

**Usage**: `/debug "<error or issue description>"`

## Critical Pre-Debug Rule:
**NEVER debug without context.** Before debugging:
1. Search for similar issues in the codebase
2. Check recent changes that might have caused the issue
3. Use Context7 to understand the frameworks/libraries involved
4. Gather error logs and stack traces

## Process:
1. **Reproduce the Issue**: Understand steps to reproduce and gather all error messages.
2. **Analyze Logs and Traces**: Examine stack traces, logs, and error messages for clues.
3. **Trace Execution Path**: Follow the code flow to identify where things go wrong.
4. **Identify Root Cause**: Determine the actual cause, not just symptoms.
5. **Propose Fix**: Suggest specific code changes to resolve the issue.

## Mandatory Tool Usage:

### Primary Debugging Tools:
- `mcp__zen__debug` - Systematic root cause analysis workflow
- `mcp__zen__tracer` - Trace code execution paths
- `mcp__zen__analyze` - Analyze code for potential issues
- `mcp__sequential__sequentialthinking` - Think through complex debugging scenarios

### Context & Research:
- `mcp__context7__resolve-library-id` - Get docs for error-related libraries
- `mcp__context7__get-library-docs` - Understand correct API usage
- `mcp__perplexity__perplexity_ask` - Search for similar issues and solutions
- `mcp__exa__web_search_exa` - Find bug reports and fixes



## Examples:
- `/debug "TypeError: Cannot read property 'id' of undefined in UserService"`
- `/debug "API returns 500 error when processing large files"`

## Notes:
- Focus on understanding the root cause, not just fixing symptoms
- Document findings for future reference
- Consider edge cases that might trigger the issue