---
allowed-tools: []
description: "Conduct comprehensive code reviews for pull requests, changes, or entire codebases."
---

## Context

- The user wants a code review for a pull request, a set of changes, or an entire codebase.

## Your Task

Based on the user's request, you will conduct a comprehensive code review.

## Process

1.  **Understand Context**: Read the PR description, related issues, and change scope.
2.  **Review Code Changes**: Examine the code for correctness, style, and best practices.
3.  **Check for Issues**: Identify bugs, security concerns, and performance issues.
4.  **Test Functionality**: Verify the changes work as intended.
5.  **Provide Feedback**: Give constructive, specific feedback with examples.

## Examples

-   `/review https://github.com/org/repo/pull/123`
-   `/review src/services/auth.js`
-   `/review --focus security`

## Notes

-   **NEVER review without context.** Before reviewing, understand the purpose of the changes, check related issues or requirements, review the PR description and commits, and identify affected components.
-   Be constructive and specific in your feedback.
-   Suggest improvements, not just problems.
-   Consider the bigger picture and architecture.
-   Praise good practices, not just criticize.
