Comprehensive project documentation updater that analyzes the actual codebase and updates all documentation files to reflect reality.

**Usage**: `/project:update-project-docs`

## Process:
1.  **Analyze Current Project State**: Scans all source/config files to extract the actual technologies, project structure, dependencies, and build tools in use.
2.  **Verify Documentation Accuracy**: Compares the findings against all documentation files (`.claude/CLAUDE.md`, `README.md`, `docs/*.md`, etc.).
3.  **Update Incorrect Information**: Identifies and replaces outdated information with the accurate current state, preserving document structure. This includes tech stack, build commands, and architecture descriptions.
4.  **Validate**: Ensures all commands in the updated docs work, file paths are correct, and example code snippets are valid.

## Examples:
- If `README.md` lists the tech stack as `React` and `Node/Express`, but the project now uses `FastAPI/Python`, the command will update it.
- If build commands are documented as `just install` but the project uses `pip install`, the command will correct them.

## Notes:
- The command outputs a summary of all changes made.
- It should be run whenever the project's structure or dependencies change significantly.
- It focuses on factual accuracy and preserves existing document organization.