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

## Mandatory Tool Usage:

### Context7 (REQUIRED FIRST):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` before writing any code
- Fetch documentation for all libraries/frameworks you plan to use
- This ensures correct API usage and best practices

### Planning & Design Tools:
- `mcp__zen__thinkdeep` - Comprehensive investigation for complex features
- `mcp__zen__consensus` - Get consensus on architectural decisions
- `mcp__sequential__sequentialthinking` - Break down complex features step-by-step
- `mcp__basic-memory__search_notes` - Search for similar implementations

### Implementation Tools:
- `mcp__zen__testgen` - Generate comprehensive test suites
- `mcp__zen__docgen` - Generate documentation for new code
- `mcp__basic-memory__write_note` - Document design decisions and patterns

## Critical Pre-Implementation Rule:
**NEVER start implementation without searching for code examples.** Before writing any code:
1. Search the codebase for similar implementations
2. Use Context7 to find up-to-date code snippets and patterns
3. Search GitHub or documentation for implementation examples
4. Only proceed after gathering concrete examples to follow

## Process:
1.  **Search for Examples**: Use search tools to find similar implementations in the codebase and documentation.
2.  **Delegate Implementation**: Spawn a `builder` agent to write the feature code according to your plan, providing the found examples.
3.  **Delegate Testing**: Spawn a `tester` agent to write the tests according to your plan.
4.  **Run Tests**: Execute the newly created tests to verify the implementation.
5.  **Refactor if Necessary**: If the code is functional but could be improved, delegate to a `builder` agent for refactoring.

## Self-Correction:
After the build is complete, use a `think` block to review the work:
-   "Does the implementation meet all the requirements?"
-   "Do the tests adequately cover the new functionality?"
-   "Is the code clean, maintainable, and does it follow project conventions?"

## Validation Tools:
- `mcp__zen__codereview` - Review the built code for quality
- `mcp__zen__secaudit` - Check for security vulnerabilities
- `mcp__zen__precommit` - Validate before committing
- `mcp__perplexity__perplexity_ask` - Research best practices if uncertain

## Examples:
- `/build "an API endpoint to fetch user profiles"`
