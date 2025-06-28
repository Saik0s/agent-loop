Executes a given command by delegating it to the most appropriate specialist persona (e.g., builder, architect) for managed execution.

**Usage**: `/orchestrate <command> [arguments]`

## Process:
1.  **Load Orchestrator**: The `orchestrator` persona is loaded to manage the task.
2.  **Analyze Command**: The orchestrator analyzes the requested `<command>` and its arguments.
3.  **Select Persona**: It determines the most suitable specialist persona (e.g., `builder`, `architect`) for the task.
4.  **Spawn Sub-agent**: A sub-agent is spawned with the chosen persona.
5.  **Delegate Task**: The orchestrator instructs the sub-agent to execute the original command.
6.  **Monitor and Verify**: The orchestrator monitors progress and verifies the output.

## Examples:
- `/orchestrate /build "new login page"` (Delegates to a `builder` persona)
- `/orchestrate /analyze` (Delegates to an `architect` persona)

## Notes:
- This command acts as a manager, ensuring tasks are handled by the correct specialist.
- It promotes a structured, role-based workflow for complex operations.