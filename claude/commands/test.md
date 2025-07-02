---
description: "The test command."
---

Generates a comprehensive test suite (unit, integration, and E2E) for a given code component, function, or feature.

**Usage**: `/test "<code component or feature description>"`

## Critical Pre-Testing Rule:
**NEVER write tests without examples.** Before writing any tests:
1. Search the codebase for existing test patterns
2. Find similar test files to understand conventions
3. Use Context7 to get testing framework best practices
4. Identify mock/fixture patterns used in the project

## Process:
1.  **Search for Test Examples**: Find existing tests in the codebase that test similar functionality.
2.  **Analyze Target**: Understand the functionality of the code or feature to be tested. Identify its inputs, outputs, dependencies, and potential failure points.
3.  **Generate Unit Tests**: Create tests for individual functions in isolation. Mock all external dependencies. Cover the "happy path," edge cases, and error conditions.
4.  **Generate Integration Tests**: Create tests to verify the interaction between multiple components. Use real services where feasible (e.g., a test database).
5.  **Generate E2E Tests (If Applicable)**: For features with a UI, create tests that simulate a complete user workflow.
6.  **Create Test Fixtures**: Generate any necessary test data (e.g., mock API responses) to support the tests.

## Mandatory Tool Usage:

### Context7 (REQUIRED FIRST):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` for testing frameworks
- Understand testing patterns and best practices for the framework

### Test Generation Tools:
- `mcp__zen__testgen` - Primary tool for comprehensive test generation
- `mcp__zen__analyze` - Analyze code to identify test scenarios
- `mcp__zen__tracer` - Trace code execution for test planning
- `mcp__sequential__sequentialthinking` - Think through test scenarios

### Test Quality:
- `mcp__zen__codereview` - Review generated tests
- `mcp__zen__consensus` - Get consensus on test coverage
- `mcp__basic-memory__search_notes` - Find test patterns
- `mcp__perplexity__perplexity_ask` - Research testing best practices

## Examples:
-   `/test "the user authentication service in 'src/services/auth.py'"`
-   `/test "the checkout feature"`

## Notes:
-   Aim for high test coverage to ensure the code is robust.
-   Generated tests should be readable, maintainable, and clearly describe what they are testing.
