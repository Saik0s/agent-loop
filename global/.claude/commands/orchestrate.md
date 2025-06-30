Delegates a given command to the most appropriate specialist persona for managed execution.

**Usage**: `/orchestrate <command> [arguments]`

## Process:
1.  **Assume Orchestrator Role**: Adopt the `@~/.claude/docs/personas/orchestrator.md` persona to manage the task.
2.  **Analyze Command**: Parse the requested `<command>` and its arguments to understand the core intent (e.g., is it about building, analyzing, or planning?).
3.  **Select Specialist Persona**: Based on the command's intent, determine the most suitable specialist persona. Examples:
    *   `/build` -> `builder`
    *   `/analyze` -> `architect`
    *   `/plan` -> `planner`
    *   `/refactor` -> `engineer`
    *   `/test` -> `tester`
4.  **Spawn Sub-agent**: Create a sub-agent with the chosen specialist persona.
5.  **Delegate and Contextualize**: Instruct the sub-agent to execute the original command. Provide it with the necessary context and objectives.
6.  **Monitor and Verify**: Oversee the sub-agent's execution. Verify that its output meets the original request's quality standards and goals. Intervene if necessary.

## Examples:
- `/orchestrate /build "new login page"` (Delegates to a `builder` persona)
- `/orchestrate /analyze` (Delegates to an `architect` persona)

## Notes:
- This command acts as a project manager, ensuring tasks are handled by the correct specialist.
- It promotes a structured, role-based workflow for complex operations, improving the quality of the final output.