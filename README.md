# Agent Loop 🚀 — AI-Powered Software Development

Agent Loop is a framework for AI-driven software development. It uses a team of specialist AI agents, managed by an orchestrator, to handle tasks from planning and architecture to coding, testing, and deployment. You guide the process using simple commands.

## Core Concepts

The framework is built on three key components:

*   **Orchestrator**: The project manager AI. You give it a high-level goal, and it breaks it down, delegating tasks to the right specialist.
*   **Specialist Agents**: AIs with specific roles (like `Architect`, `Builder`, `Tester`). They execute tasks given to them by the Orchestrator, following strict guidelines.
*   **Commands**: Your interface to the system. You use commands like `/plan`, `/build`, and `/test` to initiate workflows.

### How it Works
The typical workflow is a clear chain of delegation:

1.  **You**: Issue a command (e.g., `/build "a login API endpoint"`).
2.  **Orchestrator**: Receives the command, creates a detailed plan, and selects the right agent (e.g., the `Builder` agent).
3.  **Specialist Agent**: Executes the task, following best practices like TDD and adhering to project conventions.
4.  **Result**: The agent delivers the finished work, such as new code and passing tests, for your review.

## Available Specialist Agents

Each agent is a specialist in a specific domain of software engineering.

| Agent | Role |
| :--- | :--- |
| **`Architect`** | Designs system architecture and makes high-level technical decisions. |
| **`Builder`** | Implements features with a focus on Test-Driven Development (TDD) and clean code. |
| **`Code`** | Handles highly complex coding tasks, algorithms, and performance optimizations. |
| **`Debugger`** | Investigates and resolves bugs and technical issues. |
| **`Orchestrator`** | Manages the overall workflow, delegating tasks to other agents. |
| **`Planner`** | Translates ideas into detailed specifications, user stories, and acceptance criteria. |
| **`Researcher`** | Gathers information, compares technologies, and provides cited reports. |
| **`Reviewer`** | Conducts code reviews to ensure quality, security, and adherence to standards. |
| **`Scope Analyst`** | Analyzes issues to determine the scope of work and impacted codebase areas. |
| **`Security Analyst`** | Identifies and mitigates security vulnerabilities. |
| **`Tester`** | Creates and runs tests to ensure software quality. |

## Key Commands

This is a cheat-sheet of common commands to drive your project.

### Planning & Design
*   `/plan "<feature>"`: Creates a detailed, file-aware implementation plan.
    *   *Example:* `/plan "Implement magic-link authentication"`
*   `/spec "<feature>"`: Generates a formal feature specification with user stories and acceptance criteria.
    *   *Example:* `/spec "User profile page with avatar upload"`
*   `/propose-solutions "<problem>"`: Compares multiple technical solutions with pros and cons.
    *   *Example:* `/propose-solutions "Choose a database: SQL vs. NoSQL"`

### Development & Implementation
*   `/build "<feature>"`: Builds a feature with code and tests, following TDD.
    *   *Example:* `/build "an API endpoint to fetch user profiles"`
*   `/tdd "<feature>"`: Strictly follows the Red-Green-Refactor TDD cycle for a feature.
    *   *Example:* `/tdd "a user login function with two-factor auth"`
*   `/fix "<bug>"`: Implements a focused fix for a specific bug.
    *   *Example:* `/fix "Login button not responding on mobile"`
*   `/refactor <file or code>`: Improves the structure of existing code without changing its behavior.
    *   *Example:* `/refactor src/utils/helpers.js`

### Quality & Verification
*   `/test "<component>"`: Generates a full suite of tests (unit, integration) for a component.
    *   *Example:* `/test "the user authentication service"`
*   `/analyze [path]`: Analyzes code for quality, security, and architectural issues.
    *   *Example:* `/analyze src/core/auth.js`
*   `/review <PR URL or path>`: Conducts a comprehensive code review.
    *   *Example:* `/review https://github.com/org/repo/pull/123`

### Project Management
*   `/commit`: Generates a Conventional Commit message for your staged changes.
*   `/update-project-docs`: Scans the codebase and updates all documentation to be current.
*   `/research "<topic>"`: Conducts research and provides a structured report.
    *   *Example:* `/research "Best practices for API security in 2024"`

## Core Principles (How the Agents Think)

The agents' behavior is governed by a set of core principles defined in `CLAUDE.md`.

*   **Delegate, Don't Do**: The `Orchestrator` always delegates tasks to specialists. It never writes code itself.
*   **Think, Then Act**: Agents use a structured thinking process (`think`, `think harder`, `ultrathink`) to plan their work before executing.
*   **Context is King**: Agents **must** search for existing patterns, conventions, and documentation within the project before writing or changing code. This ensures all changes are idiomatic.
*   **Tests First**: Development is driven by tests (`TDD`). A failing test is always written before the implementation code.
*   **Cite Your Sources**: The `Researcher` agent provides citations for its findings to ensure information is verifiable.

## Example End-to-End Workflow

Here is how you might use Agent Loop to build a new feature from scratch:

```bash
# 1. Turn an idea into a concrete plan
/plan "Weekly carbon email reports for users"

# 2. Generate the formal specification, including user stories and acceptance criteria
/spec "Email report generator as per the plan"

# 3. Build the feature using Test-Driven Development
/build "Implement the email report batch job"

# 4. Ensure full test coverage for the new module
/test "src/jobs/report_batch.py"

# 5. Analyze the new code for any quality or security issues
/analyze src/jobs/report_batch.py

# 6. Update the project's README to include the new feature
/update-project-docs
```
