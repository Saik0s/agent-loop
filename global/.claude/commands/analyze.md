Analyzes the codebase or specific changes for correctness, architecture, quality, security, and performance, providing a prioritized list of issues.

**Usage**: `/analyze [path]`

## Process:
1.  Analyze code for correctness (logic errors, bugs, edge cases).
2.  Assess architecture for conformance to patterns, coupling, and scalability.
3.  Review code quality for conventions, readability, and technical debt.
4.  Conduct a security review for common vulnerabilities (e.g., OWASP Top 10).
5.  Analyze performance to identify bottlenecks and inefficient resource usage.
6.  Output a prioritized list of issues with severity levels (Critical/Major/Minor) and recommended fixes.

## Examples:
- `/analyze src/core/auth.js`
- `/analyze` (to analyze staged changes)

## Notes:
- This command provides a comprehensive health check for your code.
- It helps in identifying critical issues before they become major problems.