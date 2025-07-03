---
allowed-tools: []
description: "Guides a structured refactoring of a given code block or file."
---

## Context

- The user wants to refactor a code block or file.

## Your Task

Based on the user's request, you will guide a structured refactoring of the given code block or file.

## Process

1.  **Search for Patterns**: Find examples of good code structure in the current project to follow.
2.  **Analyze and Identify Smells**: Examine the target code to identify specific code smells (e.g., long method, duplicated code) and state the problems clearly.
3.  **Establish Test Harness**: Ensure a comprehensive suite of tests exists for the code being refactored. If tests are inadequate, write characterization tests to lock in the current behavior.
4.  **Propose Refactoring Plan**: Outline the specific refactoring patterns to be applied (e.g., "Extract Method") and present the plan for approval.
5.  **Execute Refactoring Incrementally**: Apply the refactoring in small, verifiable steps. After each atomic change, run the test suite to ensure no behavior has been altered.
6.  **Review Final Code**: Once refactoring is complete, review the new code for clarity, simplicity, and adherence to design principles.

## Examples

-   `/refactor path/to/some_file.ext`
-   `/refactor "function long_function(...) { ... }"`

## Notes

-   **NEVER start refactoring without searching for patterns.** Before any refactoring, search the codebase for existing patterns and conventions, find examples of well-structured code in the project, use Context7 to find best practices for the refactoring patterns, and only proceed after understanding the project's code style.
-   The primary rule of refactoring is to improve the design of existing code without changing its external functionality.
-   A solid test suite is mandatory for safe refactoring.