# Agent Loop 🚀 — End‑to‑End AI‑Driven Software Delivery

Agent Loop is a multi‑agent orchestration framework that lets **you** stay in the driver’s seat while specialist AI personas handle the heavy lifting—from scribbling an idea on a napkin all the way to production deployment and long‑term maintenance.

---

## ⚡ Quick‑Start: Idea ➜ Production in 10 Concrete Steps

| # | Phase | Command(s) ➜ Persona(s) | Real‑World Example |
|---|-------|-------------------------|--------------------|
| 1 | **Ideation** | `/enhance "I want a climate‑impact tracker app"` | Generates a task map, highlighting epics like *data ingestion*, *footprint calculator*, *reporting dashboard*. |
| 2 | **Early Research** | `/research "open APIs for CO₂ data"` | Researcher agents debate, returning vetted API options with citations. |
| 3 | **High‑Level Plan** | `/plan "Climate‑impact tracker MVP"` | Orchestrator spawns **3 planner** agents → synthesised roadmap with phases, risks, validation strategy. |
| 4 | **Architecture Decision** | `/propose-solutions "Select backend architecture"` | **architect** swarm compares *monolith*, *micro‑services*, *serverless* → recommends serverless on AWS Lambda for fastest time‑to‑market. |
| 5 | **Specification & Env Setup** | `/spec "User uploads grocery receipts to compute footprint"` | Generates user stories, acceptance criteria, API contract, **plus** sample `.env` & `docker-compose.yml` skeleton. |
| 6 | **Implementation (TDD)** | `/build "Receipt OCR ingestion service"` | Builder writes failing tests ➜ minimal code ➜ refactor; QA ensures coverage > 85 %. |
| 7 | **Expanding Test Coverage** | `/test "src/services/ocr.py"` | Tester auto‑generates unit & integration tests for new edge cases. |
| 8 | **Security / Quality Gate** | `/analyze src/` | 3 architects debate on code correctness, OWASP issues, performance; output is a prioritised fix list. |
| 9 | **Bug Repro & Hot‑Fix** | `/orchestrate /analyze logs/error.log` then `/orchestrate /build "fix null‑reference in footprint calc"` | Debugger isolates root cause; Builder patches; Tester writes regression test. |
|10 | **Docs & Commit** | `/update-project-docs` → `/commit` | Updates README, ADRs, Docker notes; generates Conventional Commit message ready for push. |

---

### One‑liner bootstrap

```bash
# Clone & install global agent config
git clone https://github.com/saik0s/agent‑loop.git && cd agent‑loop
./install.sh          # copies .claude to ~/.claude
````
---

## 🗺️ Workflow Cheat‑Sheet by Role

| Practitioner Need                     | Command                                               | Behind the scenes                              |
| ------------------------------------- | ----------------------------------------------------- | ---------------------------------------------- |
| **Product Owner** wants ROI estimates | `/plan "add premium tier"`                            | Planner trio drafts effort vs. revenue matrix  |
| **Tech Lead** needs ADR               | `/propose-solutions "event‑driven vs. cron batching"` | Architect swarm + pros/cons                    |
| **Developer** adds feature            | `/build "export data to CSV"`                         | Builder in strict TDD                          |
| **QA** increases coverage             | `/test "payment flow"`                                | Tester generates Cypress E2E                   |
| **Security** scans                    | `/analyze --security src/`                            | Security\_analyst outputs Severity × Fix table |
| **Ops** updates docs                  | `/update-project-docs`                                | Syncs README, k8s manifests                    |
| **Anyone** improves unclear idea      | `/enhance "<raw thought>"`                            | Produces structured task map                   |

---

## 🧬 Swarm Strategies in Practice

* **Debate** → factual accuracy (`/research`, `/analyze`)
* **Synthesis** → creativity & completeness (`/plan`, `/spec`, `/propose-solutions`, `/refactor`)

The orchestrator **must** spawn 3 sub‑agents for these commands, then merge the best from each.

---

## 🪄 Context Hygiene Tips

* Keep context window < 40 %—large tasks trigger the **new‑task automation** hand‑off.
* Use **Repoprompt codemaps** before loading whole files.
* Delegate, don’t do: Orchestrator **never** writes code directly.

---

## 📦 Example End‑to‑End Session (Copy & Paste)

```bash
# 1. Turn an idea into tasks
/enhance "I wish we could email weekly carbon reports to users"

# 2. Plan the feature
/orchestrate /plan "Weekly carbon email reports MVP"

# 3. Nail the spec
/orchestrate /spec "Email report generator per plan phase 1"

# 4. Pick the best architecture pattern
/orchestrate /propose-solutions "Batch job vs. event trigger for report gen"

# 5. Build incrementally with TDD
/orchestrate /build "Implement batch job skeleton"

# 6. Extend tests
/test "src/jobs/report_batch.py"

# 7. Commit when green
/commit
```

---

# Happy building—may your agents be ever in sync 🎉

---

## 🚀 Parallel Agent Development with Git Worktrees

To work on multiple tasks in parallel without interference, this project includes scripts to manage isolated development environments using Git worktrees.

### 1. Create a New Task Environment
To start a new task (e.g., "feature-x"), run the master script:
```bash
./scripts/spawn-agent-worktree.sh feature-x
```
This will:
1.  Create a new directory `../agent-loop-feature-x`.
2.  Create a new git branch `feature/feature-x`.
3.  Run the environment setup script `scripts/setup-environment.sh` inside the new worktree.

### 2. Start Working
Navigate to your new worktree to begin:
```bash
cd ../agent-loop-feature-x
# Start your agent or development server
claude
```

### 3. List Active Tasks
To see all your current worktrees, run:
```bash
./scripts/list-worktrees.sh
```

### 4. Clean Up a Finished Task
When you're done with a task, you can remove the worktree:
```bash
./scripts/remove-worktree.sh feature-x
```
This will remove the worktree directory and ask if you want to delete the associated git branch.

### Customizing Environment Setup
The `scripts/setup-environment.sh` script is a template. You can add your project-specific setup commands (e.g., `npm install`, `pip install`) to this file to automate your workflow.

---

## 🪝 Automated Hooks

This project comes with a set of pre-configured hooks to enforce best practices, improve code quality, and enhance security. Hooks are small scripts that run at different points in the agent's lifecycle.

### User-Level Hooks (`~/.claude/settings.json`)

These hooks apply to all your projects. To install them, copy the contents of `.claude/user_settings.json` to your `~/.claude/settings.json` file and ensure the hook scripts from `.claude/hooks` are in `~/.claude/hooks`.

*   **macOS Notifications**: Uses the `say` command to give you audible notifications when the agent needs your attention.
*   **Dangerous Command Blocker**: Prevents the execution of potentially harmful commands like `rm -rf /`.

### Project-Level Hooks (`./.claude/settings.json`)

These hooks are specific to this project and are located in the `.claude/hooks` directory.

*   **Auto Formatter**: Automatically formats code every time a file is written or edited. To enable, set the `AUTO_FORMATTER_COMMAND` environment variable (e.g., `export AUTO_FORMATTER_COMMAND="prettier --write"`).
*   **Linter**: Runs a linter on your code before it's written, blocking commits that don't meet quality standards. To enable, set the `LINTER_COMMAND` environment variable (e.g., `export LINTER_COMMAND="eslint"`).
*   **Secret Scanner**: Prevents you from accidentally committing hardcoded secrets.
*   **Ticketed TODOs**: Ensures that every `TODO` comment in the code is associated with a ticket number (e.g., `TODO(PROJ-123)`).

