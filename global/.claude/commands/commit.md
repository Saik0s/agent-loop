Analyzes staged changes and generates a commit message that follows the Conventional Commits specification.

**Usage**: `/commit`

## Process:
1.  **Analyze Staged Changes**: Perform a `git diff --staged` to understand the scope and intent of the changes.
2.  **Determine Type and Scope**:
    *   **Type**: Select the commit type (e.g., `feat`, `fix`, `refactor`, `docs`).
    *   **Scope**: Identify the part of the codebase affected (e.g., `api`, `auth`). This is optional.
3.  **Write Subject Line**: Craft a concise subject line (under 50 characters) in the imperative mood. Do not end with a period.
4.  **Compose Body (Optional)**: If the change is complex, write a body explaining the "what" and "why," separated from the subject by a blank line.
5.  **Add Footer (Optional)**: Use the footer for `BREAKING CHANGE:` notifications or to reference issue numbers (e.g., `Closes #123`).
6.  **Generate Message**: Assemble the components into the final commit message for user approval.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/commit` (after staging files with `git add`)

## Notes:
-   The generated message must adhere to the Conventional Commits v1.0.0 specification.
