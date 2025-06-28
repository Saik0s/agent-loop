# Command: Orchestrate Command Execution

Executes a given command under the management of the Orchestrator persona.

**Usage**: `/orchestrate <command> [arguments]`

## Process:

1.  **Load Orchestrator**: The `orchestrator` persona is loaded to manage the task.
2.  **Analyze Command**: The orchestrator analyzes the requested `<command>` and its arguments to understand the goal.
3.  **Select Persona**: The orchestrator determines the most suitable specialist persona (e.g., `builder`, `architect`, `qa_engineer`) to execute the command effectively.
4.  **Spawn Sub-agent**: A sub-agent is spawned with the chosen persona.
5.  **Delegate Task**: The orchestrator instructs the sub-agent to execute the original command, providing all necessary context and instructions.
6.  **Monitor and Verify**: The orchestrator monitors the sub-agent's progress and verifies that the output meets the task requirements.

This method is used to ensure that tasks are handled by the most appropriate specialist, following structured workflows and project conventions, rather than being executed directly by the current engine.

## Examples:

### Example 1: Orchestrated Feature Build
```bash
/orchestrate /build "new login page"
```
*The orchestrator will likely spawn a `builder` sub-agent to handle the implementation.*

### Example 2: Orchestrated Architecture Analysis
```bash
/orchestrate /analyze
```
*The orchestrator will spawn an `architect` sub-agent to perform the analysis.*