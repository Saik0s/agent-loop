Guides the Test-Driven Development (TDD) of a new feature, from requirements analysis and test creation to incremental implementation and validation.

**Usage**: `/tdd "<feature description>"`

## Process:
1.  **Analyze Requirements**: Deconstruct the feature description into specific, testable user stories and acceptance criteria. Identify core logic, potential edge cases, and clear success criteria.
2.  **Write Failing Tests First**: Based on the requirements, write a comprehensive suite of failing tests. Start with a single, small failing test.
    *   **Unit Tests**: For core logic and individual functions.
    *   **Integration Tests**: For API endpoints or component interactions.
    *   **E2E Tests**: For critical user flows.
3.  **Implement Minimally**: Write the simplest possible code required to make the failing test pass. Do not add any extra functionality.
4.  **Refactor**: With the tests passing, improve the code's structure, clarity, and efficiency without changing its external behavior. Ensure all tests remain green.
5.  **Repeat**: Select the next requirement, write a new failing test, and repeat the implementation and refactoring cycle (Red-Green-Refactor).
6.  **Final Validation**: Once all requirements are implemented, run the entire test suite. Verify that all acceptance criteria are met and check for sufficient test coverage.

## Examples:
- `/tdd "a user login page with two-factor authentication"`

## Notes:
- This command enforces a strict TDD workflow to ensure high-quality, well-tested code.
- The core principle is to let the tests drive the development process.
- Each cycle of Red-Green-Refactor should be small and incremental.