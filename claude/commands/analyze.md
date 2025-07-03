---
allowed-tools: []
description: "Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues."
---

## Context

- The user has requested an analysis of the codebase.
- The analysis can be general or focused on a specific path.

## Your Task

Based on the user's request, you will analyze the codebase and provide a prioritized list of actionable issues.

## Process

1.  **Define Scope**: Clearly identify the target for analysis (e.g., a specific file, directory, or staged changes).
2.  **Formulate a Plan**: Outline the steps you will take, the tools you will use, and the specific aspects you will investigate (e.g., "I will first scan for security vulnerabilities using the `security_analyst` agent, then review for code quality issues.").
3.  **Define Success**: State what a successful analysis will produce (e.g., "A prioritized list of actionable issues with clear recommendations.").
4.  **Search for Context**: Find examples of well-written code and patterns in the project to establish quality baselines.
5.  **Delegate Analysis**: Spawn specialist agents (`security_analyst`, `architect`, `tester`) to analyze the code from different perspectives.
6.  **Synthesize Findings**: Collect the reports from all sub-agents.
7.  **Generate Final Report**: Synthesize all findings into a single, prioritized list of issues. Each issue **MUST** include:
    -   A clear description of the problem.
    -   The severity (Critical, Major, Minor).
    -   A specific, actionable recommendation for fixing it.
8.  **Self-Correction**: After generating the report, use a `think` block to review it:
    -   "Is the report clear and easy to understand?"
    -   "Are the recommendations specific and actionable?"
    -   "Have I missed any important issues?"

## Mandatory Tool Usage

- `mcp__context7__resolve-library-id`
- `mcp__context7__get-library-docs`
- `mcp__zen__analyze`
- `mcp__zen__codereview`
- `mcp__zen__secaudit`
- `mcp__zen__debug`
- `mcp__zen__refactor`
- `mcp__zen__consensus`
- `mcp__zen__challenge`
- `mcp__sequential__sequentialthinking`

## Examples

- `/analyze src/core/auth.js`
- `/analyze` (to analyze staged changes)

## Notes

- **NEVER analyze without context.** Before analyzing code, search for similar code patterns, architectural documentation, framework best practices (using Context7), and existing code quality standards in the project.