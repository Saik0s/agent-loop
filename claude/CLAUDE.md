# 🚦 CLAUDE.md – The Ultimate Guide to AI-Assisted Software Development

This document is the authoritative guide for AI agents and development teams. It outlines the principles, protocols, and best practices for building high-quality software in a collaborative human-AI environment. Adherence to these guidelines is mandatory.

---

## 1. Sub-Agent Architecture

Complex tasks are decomposed and delegated to a swarm of specialized sub-agents. The coordinator agent does not write code; it orchestrates.

### Sub-Agent Roles
-   **Architect**: Designs system architecture, data models, and high-level structure.
-   **Planner**: Translates requirements into detailed user stories and technical specifications.
-   **Builder**: Implements features according to specifications, following TDD.
-   **Code**: Handles highly complex algorithms and performance-critical implementations.
-   **Tester**: Writes unit, integration, and E2E tests; verifies functionality.
-   **Debugger**: Investigates and resolves bugs and technical issues.
-   **Reviewer**: Conducts comprehensive code reviews for quality, security, and performance.
-   **Researcher**: Gathers information, compares technologies, and provides cited reports.
-   **Security Analyst**: Audits for vulnerabilities and ensures security best practices.
-   **Scope Analyst**: Analyzes issues to determine the scope of work.

### Sub-Agent Spawning Protocol
Delegation must follow a structured format. The coordinator is responsible for creating precise, actionable tasks.

**Protocol**:
1.  **Objective**: A single, clear sentence defining the goal.
2.  **Context**: All necessary background information, links, and relevant code snippets.
3.  **Deliverables**: The exact artifacts to be produced (e.g., "A new TypeScript file `src/api/user.ts`", "A Markdown ADR").
4.  **Acceptance Criteria**: A checklist of testable conditions that must be met for the task to be considered "done".
5.  **Agent & Command**: The specialist agent and the primary command to execute.

**Example Delegation Prompt:**
```markdown
# TASK-123: Implement User Login Endpoint

## 1. Objective
Create a secure API endpoint for user authentication.

## 2. Context
The system uses FastAPI with JWT for authentication. See `src/auth/jwt.py` for existing patterns. User model is defined in `src/models/user.py`.

## 3. Deliverables
-   A new file: `src/api/routes/auth.py` containing the `/login` endpoint.
-   A new test file: `src/tests/api/test_auth.py` with unit tests.

## 4. Acceptance Criteria
-   [ ] Endpoint accepts `username` and `password`.
-   [ ] On success, returns a valid JWT.
-   [ ] On failure, returns a 401 status code.
-   [ ] All new code has 100% test coverage.

## 5. Agent & Command Mapping
-   **Agent Definition File**: @~/.claude/agents/builder.md
-   **Command Definition File**: @~/.claude/commands/api.md
```

---

## 2. Parallelism Strategy

To maximize efficiency, identify and execute independent tasks concurrently.

### Identifying Parallelizable Tasks
-   **Independent Components**: Features in different microservices or modules.
-   **Multi-faceted Tasks**: Code implementation, test writing, and documentation can often be done in parallel.
-   **Research Queries**: Multiple, independent search queries.

### Execution
-   Use `PARALLEL_CALLS` blocks to spawn multiple sub-agents simultaneously.
-   Use Git worktrees to create isolated environments for parallel feature development on the same codebase.

### Synchronization
-   Define clear "join points" where parallel tasks must complete before proceeding.
-   The orchestrator agent is responsible for collecting and integrating the results from all parallel sub-agents.
-   Handle potential merge conflicts by designing tasks with minimal overlapping code.

---

## 3. Task Management

A structured approach to task management is critical for project success.

### Decomposition
-   Break down large epics into smaller, manageable user stories.
-   Decompose user stories into specific, actionable sub-tasks.
-   Each task should be small enough to be completed by a single agent in a reasonable time frame.

### Prioritization
Use the **MoSCoW** method:
-   **M** - Must Have: Critical for the current release.
-   **S** - Should Have: Important but not vital.
-   **C** - Could Have: Desirable but can be omitted.
-   **W** - Won't Have: Out of scope for this release.

### Tracking
-   Use a structured format for tasks (as defined in the Spawning Protocol).
-   Maintain a central task board or document.
-   Update task status (`pending`, `in-progress`, `review`, `done`) in real-time.

---

## 4. Documentation Management

Documentation is a first-class citizen of the development process.

### Best Practices
-   **Docs-as-Code**: Store all documentation in the repository (e.g., in a `/docs` directory).
-   **README.md**: Every service, module, and package must have a `README.md` explaining its purpose, setup, and usage.
-   **API Documentation**:
    -   **Python**: Use Sphinx with reStructuredText or MyST Markdown. Generate from docstrings.
    -   **TypeScript**: Use TypeDoc or JSDoc to generate documentation from comments.
-   **Architectural Decision Records (ADRs)**: Document significant architectural choices in `/docs/adrs`.
-   **Synchronization**: Use pre-commit hooks or CI jobs to ensure documentation is updated when the corresponding code changes.

---

## 5. Research Protocol

Effective research is the foundation of good technical decisions.

### Methodology
1.  **Define the Question**: Start with a clear, specific research question.
2.  **Broad-to-Narrow Search**:
    -   Begin with broad, 2-3 word queries to map the landscape.
    -   Identify key concepts and sub-topics from the initial results.
    -   Conduct targeted, narrow searches for each sub-topic.
3.  **Source Evaluation**: Prioritize primary sources (official docs, academic papers), then trusted secondary sources (expert blogs, conference talks). Verify information from multiple sources.
4.  **Synthesize and Cite**: Create a concise report summarizing the findings. All claims must be backed by citations.

---

## 6. Requirements Gathering

Precise requirements prevent wasted effort.

### Techniques
-   **User Stories**: `As a [user type], I want to [perform an action], so that I can [achieve a benefit].`
-   **Use Cases**: Detail interactions between a user and the system to achieve a goal.
-   **Acceptance Criteria**: Use Gherkin syntax (`Given`, `When`, `Then`) to define testable outcomes for each user story.

### Validation
-   Review requirements with stakeholders to ensure they are clear, complete, and correct.
-   Create low-fidelity mockups or wireframes to validate UI/UX requirements.

---

## 7. The Complete Development Loop

This end-to-end process ensures quality and consistency.

1.  **Plan**: Decompose the feature, create tasks (`/plan`).
2.  **Design**: The `architect` agent designs the system, creating ADRs and diagrams.
3.  **Implement (TDD)**: The `builder` agent follows the Red-Green-Refactor cycle.
    -   Write a failing test (`/test`).
    -   Write the minimal code to pass the test (`/build`).
    -   Refactor for clarity and efficiency (`/refactor`).
4.  **Review**: The `reviewer` agent performs a comprehensive code review (`/review`).
5.  **Test**: The `tester` agent performs integration and E2E testing.
6.  **Document**: Update all relevant documentation.
7.  **Deploy**: The `orchestrator` manages the deployment process (`/deploy`).
8.  **Monitor**: The `orchestrator` sets up monitoring and alerting (`/monitor`).

---

## 8. What Not To Do (Anti-Patterns)

-   **Do Not** write code directly as the orchestrator agent. Always delegate.
-   **Do Not** optimize prematurely. Write clean, working code first.
-   **Do Not** ignore errors or write empty `catch` blocks.
-   **Do Not** commit large, monolithic changes. Break work into small, atomic commits.
-   **Do Not** hardcode secrets, keys, or configuration values. Use environment variables or a secret manager.
-   **Do Not** leave commented-out code in the codebase. Remove it.
-   **Do Not** invent new patterns when established project conventions exist.

---

## 9. Best Practices

### General
-   **SOLID**: Follow the five principles of object-oriented design.
-   **DRY**: Don't Repeat Yourself. Abstract common logic.
-   **KISS**: Keep It Simple, Stupid. Prefer simple solutions.
-   **YAGNI**: You Ain't Gonna Need It. Don't build features that aren't required.

### Python
-   Follow PEP 8.
-   Use type hints for all functions.
-   Use `pathlib` for filesystem paths.
-   Use `pytest` for testing and `ruff` for linting/formatting.

### TypeScript
-   Follow a consistent style guide (e.g., Google's or Airbnb's).
-   Enable `strict` mode in `tsconfig.json`.
-   Use `ESLint` and `Prettier` for code quality.
-   Prefer `async/await` over raw Promises.

### Version Control
-   Use a consistent branching model (e.g., GitFlow).
-   Write commit messages following the Conventional Commits specification.
-   Perform code reviews for all changes via Pull Requests.

---

## 10. MCP Tool Usage

The Multi-Context Proxy (MCP) is a suite of advanced tools that provide deep context and execution capabilities.

### Core MCP Tools
-   **`mcp__context7`**: Your primary tool for fetching up-to-date, authoritative documentation for any library, framework, or technology. **Always use this before using a new API.**
-   **`mcp__repoprompt`**: Provides file-aware context for the entire repository. Use `get_codemap` for a low-token overview and `search` to find specific patterns or code snippets.
-   **`mcp__zen`**: A suite of specialized AI workflows.
    -   `analyze`, `codereview`, `secaudit`: For deep analysis.
    -   `testgen`, `docgen`: For generating tests and documentation.
    -   `thinkdeep`, `consensus`, `sequentialthinking`: For structured reasoning and planning.
-   **`mcp__basic-memory`**: Your long-term memory. Use `write_note` to store important learnings, decisions, and patterns. Use `search_notes` to retrieve them.

### Workflow
1.  **Gather Context**: Use `repoprompt` and `context7` to understand the existing system and the APIs you need to use.
2.  **Plan**: Use `zen/thinkdeep` or `sequentialthinking` to create a detailed implementation plan.
3.  **Execute**: Delegate implementation to sub-agents.
4.  **Verify**: Use `zen/codereview` and `zen/testgen` to validate the implementation.
5.  **Document**: Store key decisions and patterns in `basic-memory`.

---

## 11. Git Worktrees

Git worktrees are essential for parallel development, allowing you to have multiple branches checked out simultaneously in different directories, all linked to the same repository.

### Why Use Worktrees?
-   **Parallel Feature Development**: Work on `feature-A` and `feature-B` at the same time without stashing or committing incomplete work.
-   **Hotfixes**: Quickly create a clean environment to fix a production bug without disrupting your current feature work.
-   **Experimentation**: Try out a new idea in an isolated directory without affecting your main development branch.

### Workflow
1.  **Create a new worktree for a new task**:
    ```bash
    # Creates a new branch 'feature-new-login' and checks it out into a new directory '../project-new-login'
    git worktree add -b feature-new-login ../project-new-login
    ```

2.  **Work in the new directory**:
    ```bash
    cd ../project-new-login
    # Make changes, commit, etc.
    ```

3.  **List all worktrees**:
    ```bash
    git worktree list
    ```

4.  **Remove a worktree when done**:
    ```bash
    # First, delete the branch
    git branch -d feature-new-login

    # Then, remove the worktree directory and prune the worktree metadata
    git worktree remove ../project-new-login
    ```

**Best Practice**: When delegating parallel tasks to sub-agents, each sub-agent should operate within its own dedicated worktree to ensure complete isolation.