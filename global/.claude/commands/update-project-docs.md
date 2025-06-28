Analyzes the codebase to update all project documentation, ensuring it accurately reflects the current state of the project.

**Usage**: `/update-project-docs`

## Process:
1.  **Scan Codebase**: Systematically scan all source code and configuration files (e.g., `package.json`, `requirements.txt`, `docker-compose.yml`) to build an accurate picture of the current project. This includes:
    *   Technology stack and dependencies.
    *   Project structure and key directories.
    *   Build, install, and run commands.
    *   Environment variables.
2.  **Audit Documentation**: Read all documentation files (e.g., `README.md`, `CONTRIBUTING.md`, files in `docs/`) and compare their contents against the actual state discovered in step 1.
3.  **Identify and Correct Discrepancies**: Identify all outdated information. Propose specific changes to replace incorrect content with accurate, up-to-date information, while preserving the document's original structure and tone.
4.  **Validate Commands and Snippets**: Ensure all shell commands, code examples, and file paths in the updated documentation are correct and functional.
5.  **Summarize Changes**: Output a summary of all proposed modifications for user review before applying them.

## Examples:
- Running `/update-project-docs` in a project that migrated from Node/Express to Python/FastAPI would update the `README.md` to reflect the new stack and setup commands.

## Notes:
- This command focuses on factual accuracy (tech stack, commands, file paths) and preserves the existing organization of the documentation.
- It should be run periodically or whenever the project's structure or dependencies change significantly.