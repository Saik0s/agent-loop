---
description: "The update-project-docs command."
---

Analyzes the codebase to update all project documentation, ensuring it accurately reflects the current state of the project.

**Usage**: `/update-project-docs`

## Process:
1.  **Scan Codebase**: Systematically scan source code and configuration files to build an accurate picture of the current project (tech stack, dependencies, build commands, etc.).
2.  **Audit Documentation**: Read all documentation files (e.g., `README.md`, `CONTRIBUTING.md`) and compare their contents against the actual state.
3.  **Identify and Correct Discrepancies**: Propose specific changes to replace outdated information with accurate, up-to-date information.
4.  **Validate Commands and Snippets**: Ensure all shell commands, code examples, and file paths in the updated documentation are correct.
5.  **Summarize Changes**: Output a summary of all proposed modifications for user review before applying them.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/update-project-docs`

## Notes:
-   This command focuses on factual accuracy (tech stack, commands, file paths).
-   It should be run periodically or whenever the project's structure or dependencies change significantly.
