---
description: "Comprehensive code review guidelines."
---

# Code Review Guidelines

This document outlines a multi-perspective approach to ensure comprehensive code reviews.

## 1. The Reviewer's Mindset
-   **Be Constructive**: The goal is to improve the code, not to criticize the author.
-   **Be Specific**: Provide actionable feedback with concrete examples.
-   **Ask Questions**: If you don't understand something, ask for clarification rather than making assumptions.
-   **Automate Where Possible**: Rely on linters and formatters for style issues; focus your review on logic and architecture.

## 2. The Multi-Perspective Review Checklist

Review every change from each of these viewpoints.

### 🏛️ The Architect
-   [ ] **Design Patterns**: Does the code adhere to established architectural patterns in the project?
-   [ ] **Scalability**: Will this code scale under increased load?
-   [ ] **Dependencies**: Does it introduce new dependencies? Are they justified?
-   [ ] **Modularity**: Is the code well-encapsulated? Does it have clear boundaries?

### 🧱 The Builder (Developer)
-   [ ] **Readability**: Is the code clear and easy to understand?
-   [ ] **Simplicity (KISS)**: Is this the simplest possible solution?
-   [ ] **Duplication (DRY)**: Is there duplicated logic that could be abstracted?
-   [ ] **Future-Proofing (YAGNI)**: Does the code solve the current problem without adding unnecessary features?

### 🛡️ The Tester (QA Engineer)
-   [ ] **Test Coverage**: Is the new logic adequately covered by tests?
-   [ ] **Edge Cases**: Are edge cases and failure modes handled correctly?
-   [ ] **Test Quality**: Are the tests readable, reliable, and maintainable?
-   [ ] **Regressions**: Could this change break existing functionality?

### 🔐 The Security Analyst
-   [ ] **Input Validation**: Is all external input sanitized and validated?
-   [ ] **Authentication/Authorization**: Are permissions checked correctly?
-   [ ] **Data Handling**: Is sensitive data handled securely (e.g., no logging of secrets)?
-   [ ] **Common Vulnerabilities**: Is the code free from common vulnerabilities (e.g., OWASP Top 10)?

### 🚀 The DevOps Engineer
-   [ ] **Configuration**: Are configuration values handled correctly (e.g., via environment variables)?
-   [ ] **Observability**: Is there adequate logging and metrics to monitor this feature in production?
-   [ ] **Performance**: Are there any obvious performance bottlenecks?
-   [ ] **Rollback**: Can this change be safely rolled back if something goes wrong?