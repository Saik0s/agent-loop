---
description: "The orchestrate command."
---

Delegates a given command to the most appropriate specialist agent for managed execution.

**Usage**: `/orchestrate <command> [arguments]`

## Process:
1.  **Adopt Orchestrator Role**: Act as a project coordinator.
2.  **Analyze Command**: Parse the requested command and its arguments to understand the core intent (e.g., building, analyzing, planning).
3.  **Select Specialist Agent**: Determine the most suitable specialist agent for the task (e.g., `/build` -> `builder`, `/analyze` -> `architect`).
4.  **Delegate with Precision**: Spawn a sub-agent with the chosen specialist role. Instruct it to execute the original command, providing all necessary context, objectives, and success criteria.
5.  **Monitor and Verify**: Oversee the sub-agent's execution and verify that its output meets the original request's goals.

## Mandatory Tool Usage:

### Orchestration Tools:
- `mcp__zen__thinkdeep` - Deep analysis for complex orchestration
- `mcp__zen__consensus` - Get consensus on delegation strategy
- `mcp__sequential__sequentialthinking` - Plan orchestration steps

### Context Management:
- `mcp__basic-memory__write_note` - Document orchestration decisions
- `mcp__basic-memory__build_context` - Build context for sub-agents
- `mcp__basic-memory__search_notes` - Find similar orchestration patterns

### Monitoring & Validation:
- `mcp__zen__precommit` - Validate sub-agent outputs
- `mcp__zen__challenge` - Critically evaluate results

## Examples:
-   `/orchestrate /build "new login page"`
-   `/orchestrate /analyze`

## Notes:
-   This command acts as a manual entry point for the core delegation pattern.
-   It promotes a structured, role-based workflow for complex operations.
