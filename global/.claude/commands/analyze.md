Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues.

**Usage**: `/analyze [path]`

## Process:
1.  **Scope Definition**: If a path is provided, focus the analysis on that specific file or directory. If no path is given, analyze the currently staged changes.
    <!-- Agent Note: Use `mcp__repoprompt__search` or `gemini -p` to understand the scope and dependencies of the target path before analysis. -->
2.  **Correctness Analysis**: Systematically check for logic errors, bugs, mishandled edge cases, and potential race conditions.
3.  **Architectural Review**: Assess the code against established architectural patterns. Evaluate coupling, cohesion, and scalability.
4.  **Code Quality Audit**: Review for adherence to coding conventions, readability, and maintainability. Identify and document technical debt.
5.  **Security Vulnerability Scan**: Conduct a security review for common vulnerabilities, such as those listed in the OWASP Top 10 (e.g., injection flaws, broken authentication).
6.  **Performance Profiling**: Analyze the code to identify performance bottlenecks, inefficient algorithms, or excessive resource consumption.
7.  **Report Generation**: Synthesize findings into a prioritized list of issues. Each issue must include:
    *   A clear description of the problem.
    *   A severity level (Critical, Major, Minor).
    *   A specific, actionable recommendation for a fix.

## Swarm Strategy: Debate
<!-- Agent Note: This command MUST use the Debate strategy from `swarm_strategies.md`. -->
1.  **Delegate**: Concurrently delegate the analysis to three specialist `architect` agents.
2.  **Critique & Compare**: Each agent will present its findings. The group will then compare reports, challenge assumptions, and identify the most critical, agreed-upon issues.
3.  **Final Report**: Synthesize a single, consolidated report that prioritizes findings based on the debate. High-confidence issues are those agreed upon by multiple agents.

## Examples:
- `/analyze src/core/auth.js`
- `/analyze` (to analyze staged changes)