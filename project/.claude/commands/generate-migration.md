# Command: Generate Database Migration

**Usage**: `/generate-migration "<description_of_change>"`

## Process
1.  **Prompt for Description**: The user provides a high-level description of the schema change.
2.  **Analyze Current Schema**: The agent inspects the current database schema to understand the context and potential impact of the change.
3.  **Generate Migration File**: A new migration file is created using the project's database migration tool.
    ```bash
    # Example for a generic migration tool
    [migration_tool] create --name "[descriptive-slug]"
    ```
4.  **Scaffold Migration Code**: The agent writes the `up` (forward) and `down` (rollback) migration logic.
5.  **Include Necessary Logic**:
    -   Schema changes (e.g., creating/dropping tables, adding/removing columns).
    -   Index creation or deletion for performance.
    -   Data transformation scripts if data needs to be moved or updated.
    -   Foreign key constraints and other relational integrity rules.
6.  **Present for Review**: The generated migration script is presented to the user for review and approval.
7.  **Validate**: The agent confirms that:
    -   The `down` migration correctly reverts the `up` migration.
    -   The migration is unlikely to cause data loss.
    -   The performance impact on large tables has been considered.

## Migration Template (Agnostic)

```sql
-- Migration: [descriptive_name]
-- Generated at: [timestamp]

-- UP Migration: Apply the changes
BEGIN;

-- Add your schema changes here
-- Example: CREATE TABLE new_table (...);

COMMIT;

-- DOWN Migration: Revert the changes
BEGIN;

-- Add your rollback logic here
-- Example: DROP TABLE new_table;

COMMIT;
```

## Best Practices
-   **Idempotency**: Ensure migrations can be run multiple times without causing errors.
-   **Reversibility**: Every `up` migration must have a corresponding `down` migration.
-   **Testing**: Test migrations in a staging environment with a copy of production data.
-   **Performance**: Be mindful of locking and performance on large tables.
-   **Documentation**: Add comments to complex migration steps to explain the "why."
-   **Coordination**: Coordinate database migrations with application deployments.
