---
description: "The fix command."
---

Quick bug fixes for specific issues without full feature development.

**Usage**: `/fix "<bug description or issue number>"`

## Critical Pre-Fix Rule:
**NEVER fix without understanding.** Before fixing:
1. Reproduce the bug consistently
2. Search for the root cause, not just symptoms
3. Check for similar patterns that might have the same bug
4. Ensure fix doesn't break existing functionality

## Process:
1. **Reproduce Issue**: Confirm the bug and understand reproduction steps.
2. **Locate Problem**: Find the exact code causing the issue.
3. **Implement Fix**: Make minimal changes to resolve the issue.
4. **Test Fix**: Verify the bug is fixed and nothing else breaks.
5. **Document**: Add comments explaining the fix if non-obvious.

## Mandatory Tool Usage:

### Debugging & Analysis:
- `mcp__zen__debug` - Root cause analysis
- `mcp__zen__tracer` - Trace execution to find issue
- `mcp__sequential__sequentialthinking` - Think through fix implications

### Implementation:
- `mcp__context7__resolve-library-id` - Check correct API usage
- `mcp__context7__get-library-docs` - Verify fix aligns with docs
- `mcp__zen__refactor` - Clean up code while fixing

### Verification:
- `mcp__zen__testgen` - Generate tests for the fix
- `mcp__zen__precommit` - Validate fix before committing
- `mcp__basic-memory__write_note` - Document the bug and fix

## Examples:
- `/fix "Login button not responding on mobile"`
- `/fix "#1234 - Null pointer in user service"`
- `/fix "Memory leak in image processing"`

## Notes:
- Keep fixes minimal and focused
- Always add tests to prevent regression
- Consider if similar bugs exist elsewhere
- Document why the fix works