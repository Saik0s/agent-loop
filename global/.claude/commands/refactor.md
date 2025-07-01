Guides a structured refactoring of a given code block or file, from analyzing code smells to planning and executing changes safely.

**Usage**: `/refactor <code block or file path>`

## Process:
1.  **Analyze and Identify Smells**: Examine the target code to identify specific code smells (e.g., long method, large class, duplicated code, feature envy). State the problems clearly.
    <!-- Agent Note: Use `mcp__repoprompt__search` to find all instances of a code smell across the codebase. -->
2.  **Establish Test Harness**: Before making changes, ensure a comprehensive suite of tests exists for the code being refactored. If tests are inadequate, write the necessary characterization tests to lock in the current behavior.
3.  **Propose Refactoring Plan**: Outline the specific refactoring patterns you will apply (e.g., "Extract Method," "Replace Conditional with Polymorphism"). Present the plan and its benefits to the user for approval.
4.  **Execute Refactoring Incrementally**: Apply the refactoring in small, verifiable steps. After each atomic change, run the test suite to ensure no behavior has been altered.
5.  **Review Final Code**: Once refactoring is complete, review the new code for clarity, simplicity, and adherence to design principles.

## Swarm Strategy: Synthesis
<!-- Agent Note: This command MUST use the Synthesis strategy from `swarm_strategies.md` for proposing the refactoring plan. -->
1.  **Delegate**: For step 3, concurrently delegate the task of creating a refactoring plan to three independent `builder` sub-agents.
2.  **Compare Plans**: The Orchestrator will analyze the three proposed refactoring strategies. One agent might suggest extracting methods, while another might propose a more comprehensive class-level refactoring.
3.  **Synthesize Final Plan**: Select the most effective and safest refactoring plan, or combine elements from multiple plans. For example, adopt one agent's plan for method extraction and another's for variable renaming to create a superior final strategy before execution.

## Common Refactoring Patterns:
- **Extract Method**: Breaking down long functions into smaller, well-named ones.
- **Replace Conditional with Polymorphism**: Using objects and inheritance to handle complex conditional logic.

## Examples:
- `/refactor path/to/some_file.ext`
- `/refactor "function long_function(...) { ... }"`

## Notes:
- The primary rule of refactoring is to improve the design of existing code without changing its external functionality.
- This command must be executed systematically and safely, relying on a solid test suite.