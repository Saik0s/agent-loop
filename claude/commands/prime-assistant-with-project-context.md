---
description: "Prime the assistant with comprehensive project understanding by analyzing key files and configurations."
allowed-tools: ["Bash(git ls-files:*)"]
---

## Context

- The assistant is starting a new session or needs to gain a deep understanding of the current project.

## Your task

Load and synthesize project context to establish a clear understanding of the project''s goals, architecture, and development workflow.

## Process

1.  **Project Overview**:
    -   Read `README.md` to identify the project''s purpose and key technologies.
2.  **AI Guidelines**:
    -   Read `CLAUDE.md` (if present) for project-specific AI instructions, coding standards, and preferences.
3.  **Repository Structure**:
    -   Run `git ls-files | head -50` to get an initial overview of the repository structure.
    -   Identify main directories and their purposes.
4.  **Configuration Review**:
    -   Examine package manager files (`package.json`, `Cargo.toml`, etc.) and build configurations.
5.  **Development Context**:
    -   Identify the test framework, CI/CD configuration, and contribution guidelines.
6.  **Synthesize Understanding**:
    -   Form a mental model of the project''s goals, technical architecture, and development workflow.

## Examples

-   `/prime-context`
-   `/prime-context --focus "frontend"`

## Notes

-   **Advanced Options**: You can focus on a specific subsystem, technology stack, or include recent commit history for more targeted context.
-   **Output**: The goal is to establish a clear understanding of project goals, constraints, architecture, and workflow to better assist the user.
