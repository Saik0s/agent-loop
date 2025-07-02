---
description: "Protocol for spawning sub-agents."
---

## 2. Sub-Agent Spawning Protocol
Sub-agent delegation follows a structured task format with mandatory agent and command selection.

-   **Parallelism**: You can spawn up to 10 sub-agents in parallel. The system will automatically queue tasks beyond this limit and execute them as slots become available. Do not manually batch tasks.
-   **Task ID**: Every sub-agent task must have a unique `TASK_ID`.
-   Always spawn 3 sub-agents for each planning or research kind of task. Compare and pick the best solution.
-   **Task Structure**: Every sub-agent task must use this template:

```markdown
# [TASK_ID]: [TASK_TITLE]

## 1. Objective
A clear, concise statement of the task's goal.

## 2. Context & Background
Relevant information, including links to related issues, PRs, or other documents. Explain the "why" behind the task.

## 3. Scope
### In Scope
- [SPECIFIC_ACTIONABLE_REQUIREMENT_1]
- [SPECIFIC_ACTIONABLE_REQUIREMENT_2]
- [SPECIFIC_ACTIONABLE_REQUIREMENT_3]

### Out of Scope
- [EXPLICIT_EXCLUSION_1] ❌
- [EXPLICIT_EXCLUSION_2] ❌

## 4. Acceptance Criteria
- [ ] [TESTABLE_CRITERION_1]
- [ ] [TESTABLE_CRITERION_2]
- [ ] [TESTABLE_CRITERION_3]

## 5. Deliverables
### Artifacts
- [NEW_FILE_OR_MODIFIED_CLASS]
- [MARKDOWN_DOCUMENT]

### Documentation
- [UPDATED_README]
- [NEW_API_DOCUMENTATION]

### Tests
- [UNIT_TESTS]
- [INTEGRATION_TESTS]

## 6. Implementation Plan (Optional)
A high-level plan or checklist to guide development.

## 7. Additional Resources (Optional)
- [RELEVANT_DOCUMENTATION_LINK]
- [EXAMPLE_OR_REFERENCE_MATERIAL]

## 8. Agent & Command Mapping
- **Agent Definition File**: @~/.claude/agents/[AGENT_FILE].md
- **Command Definition File**: @~/.claude/commands/[COMMAND_FILE].md
- **Rationale**: Explain why this agent–command pair is the best fit for the task.

## 9. Notes for Sub-Agent (Optional)
Extra guidance, constraints, or reminders specific to this task.
```

-   **Agent Selection**: Choose from available agents:
    - !`ls ~/.claude/agents`

-   **Command Selection**: Choose from available commands:
    - !`ls ~/.claude/commands`

-   **Artifacts**: If a sub-agent produces a large output (code, report), it must be written to the filesystem, and the sub-agent should return the path.
