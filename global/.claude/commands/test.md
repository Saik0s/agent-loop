Generates a comprehensive test suite (unit, integration, and E2E) for a given code component, function, or feature.

**Usage**: `/test "<code component or feature description>"`

## Process:
1.  **Generate Unit Tests**: Create tests for individual functions/methods, mocking external dependencies and covering edge cases.
2.  **Generate Integration Tests**: Create tests for component interactions, using real services (like a test database) and verifying API contracts.
3.  **Generate E2E Tests**: If applicable, create tests for complete user workflows from the UI to the backend.
4.  **Include Fixtures**: Create necessary test data fixtures.

## Examples:
- `/test "the user authentication service in 'src/services/auth.js'"`
- `/test "the checkout feature"`

## Notes:
- Aims for high test coverage (>80% for unit tests).
- Helps ensure code is robust, reliable, and regression-free.