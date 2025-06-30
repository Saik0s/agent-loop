# Agent Loop: An Orchestration Framework

This project is a framework for orchestrating AI agents to handle software development. You don't write the code; you direct an **Orchestrator** agent, which in turn delegates tasks to a team of specialized AI **Personas**.

This README provides a practical guide to installing and using the system.

## Installation

The core configuration for the global agents, personas, and commands lives in the `global/.claude` directory. The `install.sh` script copies this configuration to `~/.claude`, making it available to your agent.

To install, run the script from the root of this repository:

```bash
./install.sh
```

The script will back up any existing `~/.claude` directory before installing the new configuration.

## The Core Model: Delegate, Don't Do

The fundamental workflow is based on delegation. Your role is to provide high-level direction.

1.  **You** issue a command, like `/plan` or `/build`, describing your goal.
2.  The primary **Orchestrator** agent receives your request.
3.  The **Orchestrator** analyzes the task and spawns a sub-agent with the most appropriate **Persona** (e.g., `builder`, `planner`, `security_analyst`).
4.  The specialist sub-agent executes the task and returns the results.
5.  You review the work and provide feedback, guiding the process iteratively.

This entire process is governed by the rules and persona definitions found in the `~/.claude/` directory you installed.

## The Agent Team: Personas

You have a team of specialist agents at your disposal. The Orchestrator selects the right one for the job based on your commands.

| Persona | Role | When It's Used |
|---|---|---|
| **Orchestrator** | **Project Manager** | The default agent that manages the workflow and delegates tasks. |
| **Planner** | **Product Manager** | For defining features, user stories, and acceptance criteria (`/spec`). |
| **Architect** | **System Designer** | For high-level design and technical choices (`/propose-solutions`). |
| **Builder** | **Developer** | For writing code, implementing features, and fixing bugs (`/build`). |
| **QA Engineer** | **Tester** | For writing and running tests of all kinds (`/test`). |
| **Security Analyst**| **Security Expert** | For reviewing code for vulnerabilities (`/analyze` with security context). |

*For full details on each persona's capabilities and instructions, see the files in `~/.claude/docs/personas/`.*

## The Toolkit: Key Commands

These are the primary commands you will use to direct the Orchestrator.

| Command | Description |
|---|---|
| `/plan "<desc>"` | Create a high-level plan for a new feature. |
| `/spec "<desc>"` | Create a detailed technical specification. |
| `/build "<desc>"`| Implement a feature based on a specification. |
| `/test "<component>"`| Generate a test suite for a component. |
| `/analyze [path]` | Analyze code for quality, security, or architecture. |
| `/refactor [path]`| Restructure existing code without changing its behavior. |
| `/commit` | Generate a conventional commit message for staged changes. |
| `/orchestrate <cmd>`| Explicitly tell the orchestrator to delegate a command. |

*For the detailed process behind each command, see the files in `~/.claude/commands/`.*

## Example Workflow: Building a "Magic Link" Feature

Here’s a practical example of how to use the system to build a feature from idea to commit.

1.  **You start with a plan.**
    ```
    /plan "I want a magic link login. Users enter an email, get a link, and click it to log in."
    ```
    The **Orchestrator** agent responds with a high-level plan (spec, architecture, implementation, testing).

2.  **You delegate the specification.**
    ```
    /orchestrate /spec "Magic link login feature as per our plan"
    ```
    The **Orchestrator** spawns a `planner` sub-agent, which creates a detailed specification document.

3.  **You delegate the implementation.**
    ```
    /orchestrate /build "Implement the API endpoint to request a magic link"
    ```
    The **Orchestrator** spawns a `builder` sub-agent, which writes the code and unit tests for the API endpoint.

4.  **You review and provide feedback.**
    ```
    /orchestrate /enhance "Add rate limiting to the magic link API endpoint."
    ```
    The **Orchestrator** might first use a `security_analyst` to suggest a fix, then a `builder` to implement it. This iterative loop of delegating, reviewing, and providing feedback continues until the feature is complete.

5.  **You commit the work.**
    ```
    /commit
    ```
    The agent analyzes the staged changes and generates a conventional commit message for your approval.

## How Agents Understand Your Code

The agents use a tool called **Repoprompt** to interact with your codebase efficiently. This allows them to:

*   **View code structure (Codemaps)**: They can see the classes, functions, and imports in a file without reading the entire content, saving tokens and time.
*   **Perform targeted searches**: They can find specific symbols or patterns across the repository instantly.

This is how agents can perform complex tasks like refactoring or security audits with precision, without needing to be fed the entire codebase in a massive context window. For more details on these advanced workflows, see `global/.claude/docs/repoprompt_workflows.md`.
