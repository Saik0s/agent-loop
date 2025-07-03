---
allowed-tools: []
description: "Guides the Test-Driven Development (TDD) of a new feature using the Red-Green-Refactor cycle."
---

## Context

- The user wants to develop a new feature using Test-Driven Development (TDD).

## Your Task

Based on the user's feature description, you will guide the development of the feature using the Red-Green-Refactor TDD cycle.

## Process

1.  **Search for Test Examples**: Find existing tests for similar features to understand patterns and conventions.
2.  **Analyze Requirements**: Deconstruct the feature description into specific, testable user stories and acceptance criteria.
3.  **Write a Failing Test**: Write a single, small test that fails because the feature or functionality doesn't exist yet.
4.  **Write Minimal Code to Pass**: Write the simplest possible code to make the failing test pass.
5.  **Refactor**: Improve the code's structure, clarity, and efficiency without changing its external behavior. Ensure all tests remain green.
6.  **Repeat**: Select the next requirement, write a new failing test, and repeat the Red-Green-Refactor cycle.
7.  **Final Validation**: Once all requirements are implemented, run the entire test suite to verify completion and coverage.

## Examples

-   `/tdd "a user login function with two-factor authentication"`

## Notes

-   **NEVER write tests without examples.** Before starting TDD, search for existing test patterns in the codebase, find examples of similar test cases, use Context7 to understand testing framework patterns, and identify the project's testing conventions.
-   This command enforces a strict TDD workflow.
-   The core principle is to let tests drive development.
-   Each cycle should be small and incremental.