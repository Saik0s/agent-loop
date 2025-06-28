Guides the Test-Driven Development (TDD) of a new feature, from requirements analysis and test creation to incremental implementation and validation.

**Usage**: `/build "<feature description>"`

## Process:
1.  **Analyze Requirements**: Break down the feature into testable components, identify edge cases, and define success criteria.
2.  **Write Tests First**: Create unit tests for core logic, integration tests for APIs, and E2E tests for user flows.
3.  **Implement Incrementally**: Build the minimal working version required to pass the tests.
4.  **Refactor**: Improve code clarity and structure while keeping tests green.
5.  **Validate**: Run all tests, check code coverage, and verify that all acceptance criteria are met.

## Examples:
- `/build "a user login page with two-factor authentication"`

## Notes:
- This command enforces a strict TDD workflow to ensure high-quality, well-tested code.
- It's ideal for building new features from scratch.