---
allowed-tools: []
description: "Builds a new feature based on a description, creating the necessary code and tests."
---

## Context

- The user wants to build a new feature.

## Your Task

Based on the user's description, you will build a new feature, creating the necessary code and tests.

## Process

1.  **Clarify Requirements**: Deconstruct the feature description. If anything is unclear, ask clarifying questions.
2.  **Create an Implementation Plan**: Outline the files you will create or modify.
3.  **Define a Test Plan**: Describe the unit, integration, and/or E2E tests you will write.
4.  **Define Success**: State what a successful build will look like (e.g., "A new API endpoint at `/users` that returns a list of users, with 100% test coverage.").
5.  **Search for Examples**: Use search tools to find similar implementations in the codebase and documentation.
6.  **Delegate Implementation**: Spawn a `builder` agent to write the feature code according to your plan, providing the found examples.
7.  **Delegate Testing**: Spawn a `tester` agent to write the tests according to your plan.
8.  **Run Tests**: Execute the newly created tests to verify the implementation.
9.  **Refactor if Necessary**: If the code is functional but could be improved, delegate to a `builder` agent for refactoring.
10. **Self-Correction**: After the build is complete, use a `think` block to review the work:
    -   "Does the implementation meet all the requirements?"
    -   "Do the tests adequately cover the new functionality?"
    -   "Is the code clean, maintainable, and does it follow project conventions?"

## Mandatory Tool Usage

- `mcp__context7__resolve-library-id`
- `mcp__context7__get-library-docs`
- `mcp__zen__thinkdeep`
- `mcp__zen__consensus`
- `mcp__sequential__sequentialthinking`
- `mcp__zen__testgen`
- `mcp__zen__docgen`
- `mcp__zen__codereview`
- `mcp__zen__secaudit`
- `mcp__zen__precommit`
- `mcp__perplexity__perplexity_ask`

## Examples

- `/build "an API endpoint to fetch user profiles"`

## Notes

- **NEVER start implementation without searching for code examples.** Before writing any code, search the codebase for similar implementations, use Context7 to find up-to-date code snippets and patterns, search GitHub or documentation for implementation examples, and only proceed after gathering concrete examples to follow.