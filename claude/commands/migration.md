---
allowed-tools: []
description: "Handle database schema changes and data migrations safely and reversibly."
---

## Context

- The user wants to perform a database migration.

## Your Task

Based on the user's request, you will handle database schema changes and data migrations safely and reversibly.

## Process

1.  **Analyze Changes**: Understand what schema/data changes are needed.
2.  **Create Migration**: Write up and down migration scripts.
3.  **Test Migration**: Run on a test database to verify.
4.  **Execute Migration**: Apply to the target environment with monitoring.
5.  **Verify Results**: Check data integrity and application functionality.

## Examples

-   `/migration create add-user-roles`
-   `/migration run`
-   `/migration rollback 2`
-   `/migration status`

## Notes

-   **NEVER migrate without a backup.** Before migrating, back up the database, test the migration on a copy first, ensure a rollback script exists, and check for data dependencies.
-   Always include rollback scripts.
-   Test with production-like data.
-   Consider zero-downtime strategies.
-   Document breaking changes.
