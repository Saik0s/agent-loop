# Command: Generate Database Migration

1. **Prompt** for schema change description
2. **Analyze** current schema to understand impact
3. **Generate** migration file:
   ```bash
   npx knex migrate:make "$slug"
   # or
   npx prisma migrate dev --name "$slug"
   ```
4. **Scaffold** migration with:
   - `up()` - forward migration
   - `down()` - rollback migration
5. **Include**:
   - Index creation/deletion
   - Data transformation if needed
   - Foreign key constraints
6. **Present** diff for review
7. **Validate**:
   - Rollback is possible
   - No data loss
   - Performance impact assessed

## Migration Template

```javascript
// Knex Migration
exports.up = function(knex) {
  return knex.schema
    .createTable('table_name', (table) => {
      table.increments('id').primary();
      table.string('column_name').notNullable();
      table.timestamp('created_at').defaultTo(knex.fn.now());
      table.index(['column_name'], 'idx_table_column');
    });
};

exports.down = function(knex) {
  return knex.schema.dropTableIfExists('table_name');
};
```

```typescript
// Prisma Migration
model TableName {
  id        Int      @id @default(autoincrement())
  column    String
  createdAt DateTime @default(now())
  
  @@index([column])
}
```

## Best Practices
- Always provide rollback
- Test migrations on copy of production data
- Consider migration performance on large tables
- Document breaking changes
- Coordinate with deployment