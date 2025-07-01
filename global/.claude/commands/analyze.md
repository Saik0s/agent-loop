Analyzes the codebase for correctness, architecture, quality, security, and performance, providing a prioritized list of actionable issues.

**Usage**: `/analyze [path]`

## Process:
1.  **Define Scope**: If a path is provided, focus on that file or directory. Otherwise, analyze staged changes.
2.  **Estimate Complexity**: Classify the analysis task as SIMPLE, MODERATE, or COMPLEX to determine sub-agent allocation.
3.  **Analyze Correctness**: Check for logic errors, bugs, and mishandled edge cases.
4.  **Review Architecture**: Assess against established patterns, evaluating coupling, cohesion, and scalability.
5.  **Audit Code Quality**: Review for convention adherence, readability, and technical debt.
6.  **Scan for Security Vulnerabilities**: Check for common vulnerabilities (e.g., OWASP Top 10).
7.  **Profile Performance**: Identify bottlenecks, inefficient algorithms, or resource leaks.
8.  **Generate Report**: Synthesize findings into a prioritized list of issues. Each issue must include a description, severity (Critical, Major, Minor), and a specific, actionable recommendation.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/analyze src/core/auth.js`
-   `/analyze` (to analyze staged changes)

## Notes:
-   This command provides a holistic view of code health.
-   The final report should be actionable for developers.
