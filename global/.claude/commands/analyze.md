Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues.

**Usage**: `/analyze [path]`

## Process:
1.  **Scope Definition**: If a path is provided, focus the analysis on that specific file or directory. If no path is given, analyze the currently staged changes.
2.  **Correctness Analysis**: Systematically check for logic errors, bugs, mishandled edge cases, and potential race conditions.
3.  **Architectural Review**: Assess the code against established architectural patterns. Evaluate coupling, cohesion, and scalability.
4.  **Code Quality Audit**: Review for adherence to coding conventions, readability, and maintainability. Identify and document technical debt.
5.  **Security Vulnerability Scan**: Conduct a security review for common vulnerabilities, such as those listed in the OWASP Top 10 (e.g., injection flaws, broken authentication).
6.  **Performance Profiling**: Analyze the code to identify performance bottlenecks, inefficient algorithms, or excessive resource consumption.
7.  **Report Generation**: Synthesize findings into a prioritized list of issues. Each issue must include:
    *   A clear description of the problem.
    *   A severity level (Critical, Major, Minor).
    *   A specific, actionable recommendation for a fix.

## Examples:
- `/analyze src/core/auth.js`
- `/analyze` (to analyze staged changes)

## Notes:
- This command provides a comprehensive health check for your code.
- The goal is to identify critical issues before they escalate.
- When reporting issues, prioritize clarity and actionability over raw numbers. A good report guides the developer to the solution.
- For large codebases, consider using the `gemini` CLI for a more comprehensive analysis.