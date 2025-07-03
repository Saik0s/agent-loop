---
allowed-tools: []
description: "Creates a detailed, file-aware implementation plan for a new feature or task."
---

## Context

- The user wants to create a detailed implementation plan for a new feature or task.

## Your Task

Based on the user's description, you will create a detailed, file-aware implementation plan.

## Process

1.  **Clarify Requirements**: Deconstruct the request. If vague, use `/spec` first.
2.  **Analyze Codebase**: Use `repoprompt` to understand the existing structure.
    -   `mcp__repoprompt__get_file_tree` → skim project layout.
    -   `mcp__repoprompt__search` & `mcp__repoprompt__get_codemap` → discover relevant files.
3.  **Decompose into Components**: Break down the system into logical modules (API, DB, UI).
4.  **Create Task Breakdown**: Create a specific, ordered list of implementation tasks with dependencies.
5.  **Define Validation Strategy**: Outline how the solution will be tested (Unit, Integration, E2E).
6.  **Delegate to Planner Agent**: Spawn a `planner` agent.
7.  **Provide Context**: Give the agent the feature description and the results of your codebase analysis.
8.  **Instruct Agent**: Task the agent to produce a structured Markdown document containing:
    -   High-level approach.
    -   File-by-file breakdown of changes.
    -   API/Data model changes.
    -   A list of potential risks and mitigations.
    -   A testing plan.
9.  **Review and Refine**: Review the generated plan for completeness and accuracy. Iterate with the `planner` agent if necessary.

## Examples

-   `/plan "Implement magic-link authentication using SendGrid"`

## Notes

-   This command is the crucial first step for any non-trivial feature.
-   The output should be a comprehensive roadmap for the `builder` agent.
