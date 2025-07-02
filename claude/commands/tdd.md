---
description: "The tdd command."
---

Guides the Test-Driven Development (TDD) of a new feature using the Red-Green-Refactor cycle.

**Usage**: `/tdd "<feature description>"`

## Critical Pre-TDD Rule:
**NEVER write tests without examples.** Before starting TDD:
1. Search for existing test patterns in the codebase
2. Find examples of similar test cases
3. Use Context7 to understand testing framework patterns
4. Identify the project's testing conventions

## Process:
1.  **Search for Test Examples**: Find existing tests for similar features to understand patterns and conventions.
2.  **Analyze Requirements**: Deconstruct the feature description into specific, testable user stories and acceptance criteria.
3.  **Write a Failing Test**: Write a single, small test that fails because the feature or functionality doesn't exist yet.
4.  **Write Minimal Code to Pass**: Write the simplest possible code to make the failing test pass.
5.  **Refactor**: Improve the code's structure, clarity, and efficiency without changing its external behavior. Ensure all tests remain green.
6.  **Repeat**: Select the next requirement, write a new failing test, and repeat the Red-Green-Refactor cycle.
7.  **Final Validation**: Once all requirements are implemented, run the entire test suite to verify completion and coverage.

## Mandatory Tool Usage:

### Context7 (REQUIRED FIRST):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` before writing any code
- Understand testing framework patterns and best practices

### TDD Tools:
- `mcp__zen__testgen` - Generate comprehensive test cases
- `mcp__zen__debug` - Debug failing tests
- `mcp__zen__refactor` - Refactor code in green phase
- `mcp__sequential__sequentialthinking` - Think through TDD cycles

### Code Quality:
- `mcp__zen__codereview` - Review code after each cycle
- `mcp__zen__analyze` - Analyze code coverage and quality
- `mcp__basic-memory__write_note` - Document TDD patterns
- `mcp__zen__precommit` - Validate before moving to next cycle

## Examples:
-   `/tdd "a user login function with two-factor authentication"`

## Notes:
-   This command enforces a strict TDD workflow.
-   The core principle is to let tests drive development.
-   Each cycle should be small and incremental.
