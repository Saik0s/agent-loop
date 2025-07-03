---
description: "Handle database schema changes and data migrations safely and reversibly."
---

Handle database schema changes and data migrations safely and reversibly.

**Usage**: `/migration [create|run|rollback] [migration-name]`

## Critical Pre-Migration Rule:
**NEVER migrate without backup.** Before migrating:
1. Back up the database
2. Test migration on a copy first
3. Ensure rollback script exists
4. Check for data dependencies

## Process:
1. **Analyze Changes**: Understand what schema/data changes are needed.
2. **Create Migration**: Write up and down migration scripts.
3. **Test Migration**: Run on test database to verify.
4. **Execute Migration**: Apply to target environment with monitoring.
5. **Verify Results**: Check data integrity and application functionality.

## Mandatory Tool Usage:

### Planning & Analysis:
- `mcp__zen__thinkdeep` - Plan migration strategy
- `mcp__zen__analyze` - Analyze data dependencies
- `mcp__sequential__sequentialthinking` - Think through migration steps


### Implementation:
- `mcp__context7__resolve-library-id` - Get ORM/database docs
- `mcp__context7__get-library-docs` - Understand migration patterns
- `mcp__zen__testgen` - Generate migration tests

### Verification:
- `mcp__zen__debug` - Debug migration issues

- `mcp__perplexity__perplexity_ask` - Research migration best practices

## Examples:
- `/migration create add-user-roles` - Create new migration
- `/migration run` - Run pending migrations
- `/migration rollback 2` - Rollback last 2 migrations
- `/migration status` - Check migration status

## Notes:
- Always include rollback scripts
- Test with production-like data
- Consider zero-downtime strategies
- Document breaking changes