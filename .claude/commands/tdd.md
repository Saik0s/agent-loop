---
description: "The tdd command."
---

Guides the Test-Driven Development (TDD) of a new feature using the Red-Green-Refactor cycle.

**Usage**: `/tdd "<feature description>"`

## Process:
1.  **Analyze Requirements**: Deconstruct the feature description into specific, testable user stories and acceptance criteria.
2.  **Write a Failing Test**: Write a single, small test that fails because the feature or functionality doesn't exist yet.
3.  **Write Minimal Code to Pass**: Write the simplest possible code to make the failing test pass.
4.  **Refactor**: Improve the code's structure, clarity, and efficiency without changing its external behavior. Ensure all tests remain green.
5.  **Repeat**: Select the next requirement, write a new failing test, and repeat the Red-Green-Refactor cycle.
6.  **Final Validation**: Once all requirements are implemented, run the entire test suite to verify completion and coverage.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/tdd "a user login function with two-factor authentication"`

## Notes:
-   This command enforces a strict TDD workflow.
-   The core principle is to let tests drive development.
-   Each cycle should be small and incremental.
