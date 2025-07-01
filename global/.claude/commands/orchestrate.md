Delegates a given command to the most appropriate specialist agent for managed execution.

**Usage**: `/orchestrate <command> [arguments]`

## Process:
1.  **Adopt Orchestrator Role**: Act as a project coordinator.
2.  **Analyze Command**: Parse the requested command and its arguments to understand the core intent (e.g., building, analyzing, planning).
3.  **Select Specialist Agent**: Determine the most suitable specialist agent for the task (e.g., `/build` -> `builder`, `/analyze` -> `architect`).
4.  **Delegate with Precision**: Spawn a sub-agent with the chosen specialist role. Instruct it to execute the original command, providing all necessary context, objectives, and success criteria.
5.  **Monitor and Verify**: Oversee the sub-agent's execution and verify that its output meets the original request's goals.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/orchestrate /build "new login page"`
-   `/orchestrate /analyze`

## Notes:
-   This command acts as a manual entry point for the core delegation pattern.
-   It promotes a structured, role-based workflow for complex operations.
