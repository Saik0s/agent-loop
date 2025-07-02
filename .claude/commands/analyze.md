---
description: "The analyze command."
---

Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues.

**Usage**: `/analyze [path]`

## Thinking Process:
Before starting the analysis, you **MUST** use a `think` block to:
1.  **Define Scope**: Clearly identify the target for analysis (e.g., a specific file, directory, or staged changes).
2.  **Formulate a Plan**: Outline the steps you will take, the tools you will use, and the specific aspects you will investigate (e.g., "I will first scan for security vulnerabilities using the `security_analyst` agent, then review for code quality issues.").
3.  **Define Success**: State what a successful analysis will produce (e.g., "A prioritized list of actionable issues with clear recommendations.").

## Process:
1.  **Delegate Analysis**: Spawn specialist agents (`security_analyst`, `architect`, `tester`) to analyze the code from different perspectives.
2.  **Synthesize Findings**: Collect the reports from all sub-agents.
3.  **Generate Final Report**: Synthesize all findings into a single, prioritized list of issues. Each issue **MUST** include:
    -   A clear description of the problem.
    -   The severity (Critical, Major, Minor).
    -   A specific, actionable recommendation for fixing it.

## Self-Correction:
After generating the report, use a `think` block to review it:
-   "Is the report clear and easy to understand?"
-   "Are the recommendations specific and actionable?"
-   "Have I missed any important issues?"

## Examples:
-   `/analyze src/core/auth.js`
-   `/analyze` (to analyze staged changes)
