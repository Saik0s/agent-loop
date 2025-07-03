## VibeTunnel Terminal Title Management

When working in VibeTunnel sessions, actively use the `vt title` command to communicate your current actions and progress:

### Usage
```bash
vt title "Current action - project context"
```

### Guidelines
- **Update frequently**: Set the title whenever you start a new task, change focus, or make significant progress
- **Be descriptive**: Use the title to explain what you're currently doing (e.g., "Analyzing test failures", "Refactoring auth module", "Writing documentation")
- **Include context**: Add PR numbers, file names, or feature names when relevant
- **Think of it as a status indicator**: The title helps users understand what you're working on at a glance
- If `vt` command fails (only works inside VibeTunnel), simply ignore the error and continue

### Examples
```bash
# When starting a task
vt title "Setting up Git app integration"

# When debugging
vt title "Debugging CI failures - playwright tests"

# When working on a PR
vt title "Implementing unique session names - github.com/amantus-ai/vibetunnel/pull/456"

# When analyzing code
vt title "Analyzing session-manager.ts for race conditions"

# When writing tests
vt title "Adding tests for GitAppLauncher"
```

### When to Update
- At the start of each new task or subtask
- When switching between different files or modules
- When changing from coding to testing/debugging
- When waiting for long-running operations (builds, tests)
- Whenever the user might wonder "what is Claude doing right now?"

This helps users track your progress across multiple VibeTunnel sessions and understand your current focus.

## Critical Development Rules

### ABSOLUTE CARDINAL RULES - VIOLATION MEANS IMMEDIATE FAILURE

1. **NEVER, EVER, UNDER ANY CIRCUMSTANCES CREATE A NEW BRANCH WITHOUT EXPLICIT USER PERMISSION**
   - If you are on a branch (not main), you MUST stay on that branch
   - The user will tell you when to create a new branch with commands like "create a new branch" or "switch to a new branch"
   - Creating branches without permission causes massive frustration and cleanup work
   - Even if changes seem unrelated to the current branch, STAY ON THE CURRENT BRANCH

2. **NEVER commit and/or push before the user has tested your changes!**
   - Always wait for user confirmation before committing
   - The user needs to verify changes work correctly first

3. **ABSOLUTELY FORBIDDEN: NEVER USE `git rebase --skip` EVER**
   - This command can cause data loss and repository corruption
   - If you encounter rebase conflicts, ask the user for help

4. **NEVER create duplicate files with version numbers or suffixes**
   - When refactoring or improving code, directly modify the existing files
   - DO NOT create new versions with different file names (e.g., file_v2.ts, file_new.ts)
   - Users hate having to manually clean up duplicate files

### Git Workflow Reminders
- Our workflow: start from main → create branch → make PR → merge → return to main
- PRs sometimes contain multiple different features and that's okay
- Always check current branch with `git branch` before making changes
- If unsure about branching, ASK THE USER FIRST

## Updating spec.md
As code changes, the spec.md might get outdated. If you detect outdated information, ask the user if they want to regenerate the spec.md file.

### How to regenerate spec.md:
1. Create a todo list to track the analysis tasks
2. Use multiple parallel Task tool calls to analyze:
   - Server architecture (backend components, authentication, session management)
   - Client architecture (frontend components, services)
   - Core application functionality
   - API endpoints and protocols
   - Data formats and communication protocols
   - Distributed architecture patterns
   - Activity tracking
   - Anything else not covered above
3. Focus on capturing:
   - File locations with key line numbers for important functions
   - Component responsibilities and data flow
   - Protocol specifications and message formats
   - Configuration options and CLI arguments
4. Write a concise spec.md that serves as a navigation map, keeping descriptions brief to minimize token usage
5. Include a "Key Files Quick Reference" section for fast lookup

## Build Process
- **Never run build commands** - the user has development processes running which handle automatic rebuilds
- Changes to source files are automatically compiled and watched
- Do not run build or compilation commands unless explicitly requested

## Development Workflow
- Make changes to source files
- **ALWAYS run code quality checks before committing:**
    - Run all checks (format, lint, typecheck) in parallel when available
    - Use the project's preferred checking commands
    - Run everything concurrently for maximum speed when possible
- **If there are issues to fix:**
    - Auto-fix formatting and linting issues when tools support it
- **Individual commands as needed:**
    - Format checking and fixing
    - Linting and lint fixing
    - Type checking
- Always fix all linting and type checking errors, including in unrelated code
- Never run tests unless explicitly asked to

## Code References
**THIS IS OF UTTER IMPORTANCE THE USERS HAPPINESS DEPENDS ON IT!**
When referencing code locations, you MUST use clickable format that the editor recognizes:
- `path/to/file.ext:123` format (file:line)
- `path/to/file.ext:123-456` (ranges)
- Always use relative paths from the project root
- Examples:
  - `src/server/main.py:92` - single line reference
  - `src/server/handlers/auth.js:274-280` - line range
  - `web/src/client/app.tsx:15` - when in parent directory

NEVER give a code reference or location in any other format.

## CRITICAL
**IMPORTANT**: BEFORE YOU DO ANYTHING, READ spec.md IN FULL USING THE READ TOOL!
**IMPORTANT**: NEVER USE GREP. ALWAYS USE RIPGREP!

## Git Commands
When asked to "commit and push", "commit + push", "/cp", or "c+p", use a single command:
```bash
git add -A && git commit -m "commit message" && git push
```
Do NOT use three separate commands (add, commit, push) as this is slow.

## Refactoring Philosophy
- We do not care about deprecation - remove old code completely
- Always prefer clean refactoring over gradual migration
- Delete unused functions and code paths immediately
