---
description: "The commit command."
---

Analyzes staged changes and generates a commit message that follows the Conventional Commits specification.

**Usage**: `/commit`

## Thinking Process:
Before generating a commit message, you **MUST** use a `think` block to:
1.  **Analyze Staged Changes**: Use `git diff --staged` to understand the scope and intent of the changes.
2.  **Determine Type and Scope**:
    *   **Type**: Select the appropriate commit type (e.g., `feat`, `fix`, `refactor`, `docs`, `test`, `chore`).
    *   **Scope**: Identify the part of the codebase affected (e.g., `api`, `auth`). This is optional.
3.  **Draft Subject Line**: Craft a concise subject line (under 50 characters) in the imperative mood.
4.  **Draft Body (if needed)**: If the change is complex, outline the key points for the commit message body, explaining the "what" and "why".

## Process:
1.  **Generate Commit Message**: Based on your thinking, generate a complete commit message following the Conventional Commits specification.
2.  **Present to User**: Show the user the generated commit message and ask for approval before committing.

## Self-Correction:
After generating the message, but before presenting it to the user, use a `think` block to review it:
-   "Does the message accurately reflect the changes?"
-   "Does it follow the Conventional Commits specification correctly?"
-   "Is the subject line clear, concise, and in the imperative mood?"

## Examples:
-   `/commit` (after staging files with `git add`)
