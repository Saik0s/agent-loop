---
description: "Create well-formatted commits with conventional commit messages and emojis, with pre-commit checks."
allowed-tools: ["Bash(git add:*)", "Bash(git status:*)", "Bash(git commit:*)", "Bash(git diff HEAD:*)"]
---

## Context

- The user wants to commit changes with pre-commit checks.
- No files are staged, or the user wants to confirm the staged files.

## Your task

Create a well-formatted commit with a conventional commit message and emoji, running pre-commit checks by default.

## Process

1.  Check for staged changes (`git status`).
2.  If no staged changes, review and stage appropriate files.
3.  Run pre-commit checks (lint, build, generate docs), unless `--no-verify` is used.
4.  Analyze changes to determine the commit type.
5.  Generate a descriptive commit message.
6.  Include scope if applicable: `type(scope): description`.
7.  Add a body for complex changes explaining the "why".
8.  Execute the commit.

## Examples

-   `/commit` - Standard commit with pre-commit checks.
-   `/commit --no-verify` - Skip pre-commit checks.

## Notes

### Commit Types:
- ✨ feat: New features
- 🐛 fix: Bug fixes
- 📝 docs: Documentation changes
- ♻️ refactor: Code restructuring without changing functionality
- 🎨 style: Code formatting, missing semicolons, etc.
- ⚡️ perf: Performance improvements
- ✅ test: Adding or correcting tests
- 🧑‍💻 chore: Tooling, configuration, maintenance
- 🚧 wip: Work in progress
- 🔥 remove: Removing code or files
- 🚑 hotfix: Critical fixes
- 🔒 security: Security improvements

### Best Practices:
- Keep commits atomic and focused.
- Write in the imperative mood ("Add feature" not "Added feature").
- Explain the why, not just the what.
- Reference issues/PRs when relevant.
- Split unrelated changes into separate commits.
