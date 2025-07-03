---
description: "Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues."
---

Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues.

**Usage**: `/analyze [path]`

## Thinking Process:
Before starting the analysis, you **MUST** use a `think` block to:
1.  **Define Scope**: Clearly identify the target for analysis (e.g., a specific file, directory, or staged changes).
2.  **Formulate a Plan**: Outline the steps you will take, the tools you will use, and the specific aspects you will investigate (e.g., "I will first scan for security vulnerabilities using the `security_analyst` agent, then review for code quality issues.").
3.  **Define Success**: State what a successful analysis will produce (e.g., "A prioritized list of actionable issues with clear recommendations.").

## Mandatory Tool Usage:

### Context7 (REQUIRED FIRST):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` before any code analysis
- Fetch documentation for all libraries/frameworks used in the target code
- This provides essential context for accurate analysis

### Analysis Tools:
- `mcp__zen__analyze` - Comprehensive code analysis workflow
- `mcp__zen__codereview` - Detailed code review with expert validation
- `mcp__zen__secaudit` - Security audit workflow for vulnerabilities
- `mcp__zen__debug` - Root cause analysis for issues
- `mcp__zen__refactor` - Identify refactoring opportunities



## Critical Pre-Analysis Rule:
**NEVER analyze without context.** Before analyzing code:
1. Search for similar code patterns in the project
2. Find architectural documentation or design patterns
3. Use Context7 to understand framework best practices
4. Look for existing code quality standards in the project

## Process:
1.  **Search for Context**: Find examples of well-written code and patterns in the project to establish quality baselines.
2.  **Delegate Analysis**: Spawn specialist agents (`security_analyst`, `architect`, `tester`) to analyze the code from different perspectives.
3.  **Synthesize Findings**: Collect the reports from all sub-agents.
4.  **Generate Final Report**: Synthesize all findings into a single, prioritized list of issues. Each issue **MUST** include:
    -   A clear description of the problem.
    -   The severity (Critical, Major, Minor).
    -   A specific, actionable recommendation for fixing it.

## Self-Correction:
After generating the report, use a `think` block to review it:
-   "Is the report clear and easy to understand?"
-   "Are the recommendations specific and actionable?"
-   "Have I missed any important issues?"

## Validation Tools:
- `mcp__zen__consensus` - Get multi-model consensus on critical findings
- `mcp__zen__challenge` - Critically evaluate your analysis
- `mcp__sequential__sequentialthinking` - Systematic problem-solving for complex issues

## Examples:
-   `/analyze src/core/auth.js`
-   `/analyze` (to analyze staged changes)
