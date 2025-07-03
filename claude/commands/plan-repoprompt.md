---
allowed-tools: []
description: "Generates a file-aware implementation plan for a new feature or task exclusively through Repoprompt."
---

## Context

- The user wants to generate a file-aware implementation plan for a new feature or task.

## Your Task

Based on the user's high-level description, you will generate a file-aware implementation plan exclusively through Repoprompt.

## Process

1.  **Expand the task**: Run `mcp__repoprompt__request_plan` with the raw idea to explode it into bullet-level requirements and clarifying questions.
2.  **Locate relevant code**:
    -   `mcp__repoprompt__get_file_tree` → skim the project layout.
    -   Use targeted `mcp__repoprompt__search` queries (path or content) and `mcp__repoprompt__get_codemap` to discover files/modules that will be touched.
3.  **Pre-select the files**: Pass the discovered paths to `mcp__repoprompt__set_selection` so the planning model has direct file context.
4.  **Prime the planner**: Call `mcp__repoprompt__set_prompt_state` to combine:
    *   the expanded requirements,
    *   the selected file list,
    *   and an instruction to return a step-by-step plan that references the selected files.
5.  **Generate & refine the plan**: Invoke `mcp__repoprompt__request_plan` again. The output should include ordered tasks, dependencies, risk/mitigation, and a validation strategy.
6.  **Publish / hand-off**: Save the final Markdown plan (e.g., commit it under `/docs/plans/` or paste it in a PR description).

## Examples

-   `/plan "Add magic-link login"`

## Notes

-   The plan should cite concrete file paths.
-   Risks and tests should be listed.
-   The scope should match the original request—no extra work.