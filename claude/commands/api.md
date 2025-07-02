---
description: "The api command."
---

Create and test API endpoints quickly with proper structure and documentation.

**Usage**: `/api [create|test] [endpoint-path] [method]`

## Critical Pre-API Rule:
**NEVER create APIs without examples.** Before creating:
1. Search for existing API patterns in the project
2. Check API design guidelines and standards
3. Use Context7 to understand framework patterns
4. Find similar endpoints for consistency

## Process:
1. **Design Endpoint**: Define path, method, request/response structure.
2. **Implement Handler**: Create the endpoint logic with validation.
3. **Add Tests**: Write unit and integration tests.
4. **Document API**: Create OpenAPI/Swagger documentation.
5. **Test Manually**: Verify with actual HTTP requests.

## Mandatory Tool Usage:

### Design & Implementation:
- `mcp__context7__resolve-library-id` - Get framework API docs
- `mcp__context7__get-library-docs` - Understand routing patterns
- `mcp__zen__thinkdeep` - Design API structure
- `mcp__sequential__sequentialthinking` - Plan endpoint logic

### Testing & Validation:
- `mcp__zen__testgen` - Generate API tests
- `mcp__zen__analyze` - Analyze API design
- `mcp__zen__secaudit` - Check API security

### Documentation:
- `mcp__zen__docgen` - Generate API documentation
- `mcp__basic-memory__write_note` - Document API decisions
- `mcp__perplexity__perplexity_ask` - Research REST best practices

## Examples:
- `/api create /users GET` - Create user listing endpoint
- `/api create /auth/login POST` - Create login endpoint
- `/api test /products` - Test products endpoints
- `/api document /api/v2` - Document v2 API

## Notes:
- Follow RESTful conventions
- Include proper error handling
- Validate all inputs
- Version APIs appropriately