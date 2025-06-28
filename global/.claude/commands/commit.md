Analyzes staged changes and generates a commit message that follows the Conventional Commits specification.

**Usage**: `/commit`

## Process:
1.  **Analyze Staged Changes**: Perform a `git diff --staged` to understand the full scope and intent of the changes. Categorize them as a feature, fix, refactor, documentation, etc.
2.  **Determine Type and Scope**:
    *   **Type**: Select the appropriate commit type (e.g., `feat`, `fix`, `build`, `chore`, `ci`, `docs`, `style`, `refactor`, `perf`, `test`).
    *   **Scope**: Identify the part of the codebase affected (e.g., `api`, `auth`, `ui`). The scope is optional.
3.  **Write Subject Line**: Craft a concise subject line (under 50 characters) in the imperative mood (e.g., "Add," "Fix," "Change," not "Added," "Fixed," "Changed"). Do not end with a period.
4.  **Compose Body (Optional)**: If the change is complex, write a body explaining the "what" and "why." Separate it from the subject with a blank line.
5.  **Add Footer (Optional)**: Use the footer for `BREAKING CHANGE:` notifications or to reference issue numbers (e.g., `Closes #123`).
6.  **Generate Final Message**: Assemble the components into the final commit message for user approval.

## Examples:
- `/commit` (after staging files with `git add`)

## Notes:
- The generated message must adhere to the Conventional Commits v1.0.0 specification.
- This practice maintains a clean, semantic, and machine-readable commit history.