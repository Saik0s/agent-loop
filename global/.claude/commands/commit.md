Analyzes staged changes and generates a commit message that follows the Conventional Commits specification.

**Usage**: `/commit`

## Process:
1.  Analyze the staged changes to understand their nature (e.g., new feature, bug fix, refactor).
2.  Determine the appropriate type (feat, fix, docs, etc.) and scope.
3.  Write a concise subject line in the imperative mood.
4.  Compose a body explaining the "what" and "why" of the change, if necessary.
5.  Add any breaking changes or issue references to the footer.
6.  Generate the final commit message.

## Examples:
- `/commit` (after staging files with `git add`)

## Notes:
- The generated message adheres to the Conventional Commits standard (`<type>(<scope>): <subject>`).
- This helps maintain a clean and semantic commit history.