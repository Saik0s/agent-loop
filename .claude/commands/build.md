---
description: "The build command."
---

Builds a new feature based on a description, creating the necessary code and tests.

**Usage**: `/build "<feature description>"`

## Thinking Process:
Before starting to build, you **MUST** use a `think` block to:
1.  **Clarify Requirements**: Deconstruct the feature description. If anything is unclear, ask clarifying questions.
2.  **Create an Implementation Plan**: Outline the files you will create or modify.
3.  **Define a Test Plan**: Describe the unit, integration, and/or E2E tests you will write.
4.  **Define Success**: State what a successful build will look like (e.g., "A new API endpoint at `/users` that returns a list of users, with 100% test coverage.").

## Process:
1.  **Delegate Implementation**: Spawn a `builder` agent to write the feature code according to your plan.
2.  **Delegate Testing**: Spawn a `tester` agent to write the tests according to your plan.
3.  **Run Tests**: Execute the newly created tests to verify the implementation.
4.  **Refactor if Necessary**: If the code is functional but could be improved, delegate to a `builder` agent for refactoring.

## Self-Correction:
After the build is complete, use a `think` block to review the work:
-   "Does the implementation meet all the requirements?"
-   "Do the tests adequately cover the new functionality?"
-   "Is the code clean, maintainable, and does it follow project conventions?"

## Examples:
- `/build "an API endpoint to fetch user profiles"`
