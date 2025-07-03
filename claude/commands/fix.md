---
allowed-tools: []
description: "Quick bug fixes for specific issues without full feature development."
---

## Context

- The user wants to fix a bug.

## Your Task

Based on the user's bug description, you will implement a quick fix for the specific issue without performing full feature development.

## Process

1.  **Reproduce Issue**: Confirm the bug and understand the reproduction steps.
2.  **Locate Problem**: Find the exact code causing the issue.
3.  **Implement Fix**: Make minimal changes to resolve the issue.
4.  **Test Fix**: Verify the bug is fixed and nothing else breaks.
5.  **Document**: Add comments explaining the fix if it is non-obvious.

## Examples

-   `/fix "Login button not responding on mobile"`
-   `/fix "#1234 - Null pointer in user service"`
-   `/fix "Memory leak in image processing"`

## Notes

-   **NEVER fix without understanding.** Before fixing, reproduce the bug consistently, search for the root cause (not just symptoms), check for similar patterns that might have the same bug, and ensure the fix doesn't break existing functionality.
-   Keep fixes minimal and focused.
-   Always add tests to prevent regression.
-   Consider if similar bugs exist elsewhere.
-   Document why the fix works.