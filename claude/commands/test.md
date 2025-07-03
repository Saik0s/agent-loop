---
allowed-tools: []
description: "Generates a comprehensive test suite (unit, integration, and E2E) for a given code component, function, or feature."
---

## Context

- The user wants to generate a test suite for a code component, function, or feature.

## Your Task

Based on the user's request, you will generate a comprehensive test suite (unit, integration, and E2E).

## Process

1.  **Search for Test Examples**: Find existing tests in the codebase that test similar functionality.
2.  **Analyze Target**: Understand the functionality of the code or feature to be tested. Identify its inputs, outputs, dependencies, and potential failure points.
3.  **Generate Unit Tests**: Create tests for individual functions in isolation. Mock all external dependencies. Cover the "happy path," edge cases, and error conditions.
4.  **Generate Integration Tests**: Create tests to verify the interaction between multiple components. Use real services where feasible (e.g., a test database).
5.  **Generate E2E Tests (If Applicable)**: For features with a UI, create tests that simulate a complete user workflow.
6.  **Create Test Fixtures**: Generate any necessary test data (e.g., mock API responses) to support the tests.

## Examples

-   `/test "the user authentication service in 'src/services/auth.py'"`
-   `/test "the checkout feature"`

## Notes

-   **NEVER write tests without examples.** Before writing any tests, search the codebase for existing test patterns, find similar test files to understand conventions, use Context7 to get testing framework best practices, and identify mock/fixture patterns used in the project.
-   Aim for high test coverage to ensure the code is robust.
-   Generated tests should be readable, maintainable, and clearly describe what they are testing.