---
allowed-tools: []
description: "Manage project dependencies including updates, security audits, and conflict resolution."
---

## Context

- The user wants to manage project dependencies.

## Your Task

Based on the user's request, you will manage project dependencies, including updating them, running security audits, and resolving conflicts.

## Process

1.  **Audit Current Dependencies**: Check for outdated, vulnerable, or unused packages.
2.  **Identify Issues**: Find security vulnerabilities and version conflicts.
3.  **Plan Updates**: Determine safe update strategy (patch/minor/major).
4.  **Execute Updates**: Update packages with proper testing.
5.  **Verify Compatibility**: Ensure all functionality works after updates.

## Examples

-   `/dependencies audit`
-   `/dependencies update react@18`
-   `/dependencies remove unused`
-   `/dependencies check-security`

## Notes

-   Always review breaking changes before major updates.
-   Test thoroughly after updates.
-   Keep dependencies minimal.
-   Document why specific versions are pinned.