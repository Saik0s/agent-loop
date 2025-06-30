Guides a structured refactoring of a given code block or file, from analyzing code smells to planning and executing changes safely.

**Usage**: `/refactor <code block or file path>`

## Process:
1.  **Analyze and Identify Smells**: Examine the target code to identify specific code smells (e.g., long method, large class, duplicated code, feature envy). State the problems clearly.
2.  **Establish Test Harness**: Before making changes, ensure a comprehensive suite of tests exists for the code being refactored. If tests are inadequate, write the necessary characterization tests to lock in the current behavior.
3.  **Propose Refactoring Plan**: Outline the specific refactoring patterns you will apply (e.g., "Extract Method," "Replace Conditional with Polymorphism"). Present the plan and its benefits to the user for approval.
4.  **Execute Refactoring Incrementally**: Apply the refactoring in small, verifiable steps. After each atomic change, run the test suite to ensure no behavior has been altered.
5.  **Review Final Code**: Once refactoring is complete, review the new code for clarity, simplicity, and adherence to design principles.

## Common Refactoring Patterns:
- **Extract Method**: Breaking down long functions into smaller, well-named ones.
- **Replace Conditional with Polymorphism**: Using objects and inheritance to handle complex conditional logic.
- **Introduce Explaining Variable**: Improving readability by giving a complex expression a clear name.

## Examples:
- `/refactor path/to/some_file.ext`
- `/refactor "function long_function(...) { ... }"`

## Notes:
- The primary rule of refactoring is to improve the design of existing code without changing its external functionality.
- This command must be executed systematically and safely, relying on a solid test suite.