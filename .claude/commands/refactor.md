---
description: "The refactor command."
---

Guides a structured refactoring of a given code block or file.

**Usage**: `/refactor <code block or file path>`

## Process:
1.  **Analyze and Identify Smells**: Examine the target code to identify specific code smells (e.g., long method, duplicated code) and state the problems clearly.
2.  **Establish Test Harness**: Ensure a comprehensive suite of tests exists for the code being refactored. If tests are inadequate, write characterization tests to lock in the current behavior.
3.  **Propose Refactoring Plan**: Outline the specific refactoring patterns to be applied (e.g., "Extract Method") and present the plan for approval.
4.  **Execute Refactoring Incrementally**: Apply the refactoring in small, verifiable steps. After each atomic change, run the test suite to ensure no behavior has been altered.
5.  **Review Final Code**: Once refactoring is complete, review the new code for clarity, simplicity, and adherence to design principles.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/refactor path/to/some_file.ext`
-   `/refactor "function long_function(...) { ... }"`

## Notes:
-   The primary rule of refactoring is to improve the design of existing code without changing its external functionality.
-   A solid test suite is mandatory for safe refactoring.
