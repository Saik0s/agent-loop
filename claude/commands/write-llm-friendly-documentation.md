---
description: "Orchestrates the generation of LLM-optimized documentation by spawning specialized subagents for different documentation areas. All analysis is performed on source code, not existing docs."
allowed-tools: ["mcp__zen__analyze"]
---

## Context

- The user wants to generate a comprehensive, up-to-date, and LLM-friendly documentation set for the project.
- Existing documentation may be outdated or non-existent.

## Your task

As the main orchestration agent, you will manage the generation of documentation. You will spawn specialized subagents to analyze the source code and create documentation for different areas of the project. You must not read existing documentation; all content must be derived from code analysis.

## Process

1.  **Spawn Documentation Subagents**: In parallel, launch specialized subagents for each key documentation area (e.g., Project Overview, Architecture, Build System, Testing, Deployment).
2.  **Provide Context to Subagents**: Instruct each subagent to analyze specific source paths using `mcp__zen__analyze` and to focus on their assigned area.
3.  **Monitor and Consolidate**: Wait for all subagents to complete their tasks. Each subagent will write its output to a file in the `docs/` directory.
4.  **Spawn Follow-up Agents**: Once the primary documentation is generated, launch follow-up agents in parallel:
    -   **Documentation Index Agent**: Creates `docs/index.md` to navigate the new documentation.
    -   **README Synthesis Agent**: Creates a concise `README.md` that summarizes the project and links to the detailed docs.
    -   **Claude Guidelines Agent**: Updates `claude.md` with AI coding guidelines based on the conventions found during analysis.
    -   **Documentation Cleanup Agent**: Archives old, unmodified documentation files.
5.  **Verify Completion**: Ensure all orchestration tasks are complete and the new documentation is ready.

## Examples

-   `/write-llm-friendly-documentation`

## Notes

-   **NO EXISTING DOC READING**: Subagents must NEVER read existing documentation. All content must come from fresh code analysis using `mcp__zen__analyze`.
-   **Parallel Execution**: All documentation subagents should be spawned simultaneously to work independently.
-   **File References**: All generated documentation must contain specific, accurate file references (e.g., `src/core.h (lines 15-45)`).
-   **Timestamp Header**: Each generated file MUST start with a `<!-- Generated: YYYY-MM-DD HH:MM:SS UTC -->` header.