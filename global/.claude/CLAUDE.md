# 🚦 CLAUDE – Global Operating Rules

## 1. Core Principle: Think, Then Act
Before any action, you **MUST** use a `THOUGHT` block to outline your goal, chosen tool, and success metric. This is not optional.

-   **`think`**: For simple, single-step actions.
-   **`think harder`**: For multi-step reasoning and planning.
-   **`ultrathink`**: For complex debugging, planning, or design, allocating a larger thinking budget.

## 2. Todo Management Protocol (MANDATORY)
All tasks must be tracked using the `TodoWrite` and `TodoRead` tools. File-based todo lists are deprecated.

-   **Create Todos**: Use `TodoWrite` to add tasks.
-   **Assign Todos**: Every Todo **must** be assigned to a specific agent upon creation.
    -   *Correct*: `TodoWrite(task="[builder] Implement the API endpoint for user creation.")`
    -   *Incorrect*: `TodoWrite(task="Implement the API endpoint.")`
-   **Read Todos**: Use `TodoRead` to review your current tasks.
-   **Update Todos**: Use `TodoWrite` with the `update=True` flag to mark todos as complete `[x]` or update them.

## 3. Sub-Agent Spawning Protocol
Sub-agent delegation follows a structured task format with mandatory agent and command selection.

-   **Parallelism**: You can spawn up to 10 sub-agents in parallel. The system will automatically queue tasks beyond this limit and execute them as slots become available. Do not manually batch tasks.
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
- **Agent Definition File**: `~/.claude/agents/[AGENT_FILE].md`
- **Command Definition File**: `~/.claude/commands/[COMMAND_FILE].md`
- **Rationale**: Explain why this agent–command pair is the best fit for the task.

## 9. Notes for Sub-Agent (Optional)
Extra guidance, constraints, or reminders specific to this task.
```

-   **Agent Selection**: Choose from available agents:
    - `~/.claude/agents/architect.md`
    - `~/.claude/agents/builder.md`
    - `~/.claude/agents/planner.md`
    - `~/.claude/agents/scope-analyst.md`
    - `~/.claude/agents/security_analyst.md`
    - `~/.claude/agents/code.md`
    - `~/.claude/agents/orchestrator.md`
    - `~/.claude/agents/researcher.md`
    - `~/.claude/agents/debugger.md`
    - `~/.claude/agents/tester.md`

-   **Command Selection**: Choose from available commands:
    - `~/.claude/commands/analyze.md`
    - `~/.claude/commands/build.md`
    - `~/.claude/commands/commit.md`
    - `~/.claude/commands/create-command.md`
    - `~/.claude/commands/enhance.md`
    - `~/.claude/commands/fix-optimize-validate-command.md`
    - `~/.claude/commands/orchestrate.md`
    - `~/.claude/commands/plan.md`
    - `~/.claude/commands/propose-solutions.md`
    - `~/.claude/commands/refactor.md`
    - `~/.claude/commands/research.md`
    - `~/.claude/commands/spec.md`
    - `~/.claude/commands/tdd.md`
    - `~/.claude/commands/test.md`
    - `~/.claude/commands/update-project-docs.md`

-   **Artifacts**: If a sub-agent produces a large output (code, report), it must be written to the filesystem, and the sub-agent should return the path.

## 4. Verification & Debugging Loop

### Fast Feedback
-   **Tiny Evals**: For every code change, run a mini-evaluation of at least 20 realistic test cases. Record pass/fail rates and halt if success drops below 90%.
-   **LLM Judge**: For complex outputs, send the output plus a rubric (accuracy, completeness, efficiency) to a `JUDGE_MODEL`. Only accept if the score is ≥ 0.8.

### Debugging Technique
Redirect your development server’s output to a log file that you can read:
`bun run dev > dev.log 2>&1`
Examine `dev.log` to understand application behavior. Add more logging statements to the code to zero in on issues.

## 5. Tool & Search Strategy

-   **Tool Selection**: Before acting, list available tools and select the single most relevant one. Explain your choice in ≤15 words.
-   **Broad-to-Narrow Search**:
    1.  Issue a broad, two-word query.
    2.  Scan results and write three focus areas.
    3.  For each area, draft and execute a narrow query.
-   **Parallel Tool Calls**: When you have 3+ independent queries (e.g., reading files, searching), bundle them into a single `PARALLEL_CALLS` block.

## 6. Error Handling & State Management

-   **Retry on Failure**: On a `TOOL_ERROR`, retry up to 3 times with exponential backoff. If it still fails, log an `ERROR_NOTE` and move to the next logical step.
-   **Context Compression**: When conversation tokens exceed 80% of the limit, compress the history into a 5-sentence summary, store it in memory, and wipe older messages.

## PERSISTENCE

You are an agent - please keep going until the user's query is completely resolved, before ending your turn and yielding back to the user. Only terminate your turn when you are sure that the problem is solved.

## TOOL CALLING

If you are not sure about file content or codebase structure pertaining to the user's request, use your tools to read files and gather the relevant information: do NOT guess or make up an answer.

## PLANNING

You MUST plan extensively before each function call, and reflect extensively on the outcomes of the previous function calls. DO NOT do this entire process by making function calls only, as this can impair your ability to solve the problem and think insightfully.

If you find yourself doing something very unusual or inconsistent with the existing codebase, patterns and practices then stop and explain the situation to the user and confirm the course of action before proceeding.

Always implement high quality production ready code that performs the requested task, using the requested tools, libraries, external systems, infrastructure etc. Do NOT implement mocks, simulations or otherwise fake or cheat in an attempt to complete the request.
