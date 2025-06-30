Generates a comprehensive test suite (unit, integration, and E2E) for a given code component, function, or feature.

**Usage**: `/test "<code component or feature description>"`

## Process:
1.  **Analyze Target**: Understand the functionality of the code or feature to be tested. Identify its inputs, outputs, dependencies, and potential failure points.
2.  **Generate Unit Tests**: Create tests for individual functions or methods in isolation.
    *   Mock all external dependencies (e.g., APIs, databases) to ensure tests are fast and deterministic.
    *   Cover the "happy path," edge cases (e.g., null inputs, empty arrays), and error conditions.
3.  **Generate Integration Tests**: Create tests to verify the interaction between multiple components.
    *   Use real services where feasible (e.g., a test database container).
    *   Verify API contracts, data flow between services, and correct integration logic.
4.  **Generate E2E Tests (If Applicable)**: For features with a UI, create tests that simulate a complete user workflow from the frontend to the backend.
5.  **Create Test Fixtures**: Generate any necessary test data (e.g., sample user objects, mock API responses) to support the tests.

## Examples:
- `/test "the user authentication service in 'src/services/auth.py'"`
- `/test "the checkout feature"`

## Notes:
- Aim for high test coverage (>80% for unit tests) to ensure the code is robust and reliable.
- Generated tests should be readable, maintainable, and clearly describe what they are testing.
- This command helps ensure code is regression-free.