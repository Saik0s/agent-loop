Generates a comprehensive test suite (unit, integration, and E2E) for a given code component, function, or feature.

**Usage**: `/test "<code component or feature description>"`

## Process:
1.  **Analyze Target**: Understand the functionality of the code or feature to be tested. Identify its inputs, outputs, dependencies, and potential failure points.
2.  **Generate Unit Tests**: Create tests for individual functions in isolation. Mock all external dependencies. Cover the "happy path," edge cases, and error conditions.
3.  **Generate Integration Tests**: Create tests to verify the interaction between multiple components. Use real services where feasible (e.g., a test database).
4.  **Generate E2E Tests (If Applicable)**: For features with a UI, create tests that simulate a complete user workflow.
5.  **Create Test Fixtures**: Generate any necessary test data (e.g., mock API responses) to support the tests.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/test "the user authentication service in 'src/services/auth.py'"`
-   `/test "the checkout feature"`

## Notes:
-   Aim for high test coverage to ensure the code is robust.
-   Generated tests should be readable, maintainable, and clearly describe what they are testing.
