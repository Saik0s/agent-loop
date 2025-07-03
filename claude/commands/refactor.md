---
description: "Guides a structured refactoring of a given code block or file."
---

Guides a structured refactoring of a given code block or file.

**Usage**: `/refactor <code block or file path>`

## Critical Pre-Refactoring Rule:
**NEVER start refactoring without searching for patterns.** Before any refactoring:
1. Search the codebase for existing patterns and conventions
2. Find examples of well-structured code in the project
3. Use Context7 to find best practices for the refactoring patterns
4. Only proceed after understanding the project's code style

## Process:
1.  **Search for Patterns**: Find examples of good code structure in the current project to follow.
2.  **Analyze and Identify Smells**: Examine the target code to identify specific code smells (e.g., long method, duplicated code) and state the problems clearly.
3.  **Establish Test Harness**: Ensure a comprehensive suite of tests exists for the code being refactored. If tests are inadequate, write characterization tests to lock in the current behavior.
4.  **Propose Refactoring Plan**: Outline the specific refactoring patterns to be applied (e.g., "Extract Method") and present the plan for approval.
5.  **Execute Refactoring Incrementally**: Apply the refactoring in small, verifiable steps. After each atomic change, run the test suite to ensure no behavior has been altered.
6.  **Review Final Code**: Once refactoring is complete, review the new code for clarity, simplicity, and adherence to design principles.

## Mandatory Tool Usage:

### Context7 (REQUIRED FIRST):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` before refactoring
- Understand the framework/library patterns to refactor correctly

### Refactoring Tools:
- `mcp__zen__refactor` - Comprehensive refactoring workflow
- `mcp__zen__analyze` - Analyze code before refactoring
- `mcp__zen__codereview` - Review refactored code
- `mcp__zen__testgen` - Generate tests before refactoring

### Planning & Validation:
- `mcp__sequential__sequentialthinking` - Plan refactoring steps
- `mcp__zen__consensus` - Get consensus on refactoring approach
- `mcp__zen__precommit` - Validate refactored code


## Examples:
-   `/refactor path/to/some_file.ext`
-   `/refactor "function long_function(...) { ... }"`

## Notes:
-   The primary rule of refactoring is to improve the design of existing code without changing its external functionality.
-   A solid test suite is mandatory for safe refactoring.
