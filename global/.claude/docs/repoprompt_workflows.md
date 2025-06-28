# Repoprompt Workflow Recipes

This document provides several end-to-end "recipes" that show exactly how you can chain Repoprompt commands to automate common engineering tasks. Each recipe is actionable, copy-pastable, and clearly states **what**, **why**, and **how**.

## 1. Quick-Scan Table

| # | Workflow title                      | Primary outcome                                                       |
| - | ----------------------------------- | --------------------------------------------------------------------- |
| 1 | **Post-Implementation Auto-Review** | Gather all changed files ➜ set prompt ➜ launch code-review loop       |
| 2 | **Codemap Explorer**                | Create a mental model of the codebase with near-zero tokens           |
| 3 | **Feature-First Planner**           | Turn a one-line idea into an implementation plan tied to actual files |
| 4 | **Targeted Refactor Loop**          | Isolate a pattern, plan refactor, stage edits, re-test                |
| 5 | **Bug-to-Patch Hot-fix**            | Start from a stack trace, locate culprit, patch, and validate         |

## 2. Detailed Playbooks

### 1️⃣ Post-Implementation Auto-Review

**When to use:** After you've staged changes (`git add .`) and want an AI to perform a code review before you commit.

| Step | Command & payload                                                                                      | Purpose                                                  |
| ---- | ------------------------------------------------------------------------------------------------------ | -------------------------------------------------------- |
| 1    | `mcp__repoprompt__get_prompt_state`                                                                    | Snapshot current prompt & selection (optional rollback). |
| 2    | **(within your orchestrator/CI script)** Detect which files Git changed.                               | Creates `CHANGED_FILES=( … )`.                           |
| 3    | `mcp__repoprompt__set_selection`<br>`{ "paths": CHANGED_FILES_JSON, "operation":"replace" }`           | Select only the modified files.                          |
| 4    | `mcp__repoprompt__read_selected_files`                                                                 | Fetch full diff-ready contents (could be large).         |
| 5    | Build a diff (`git diff --staged`) and embed it in a **new prompt** instructing the model to run a code review. | Gives reviewers context without switching tools.         |
| 6    | `mcp__repoprompt__set_prompt_state`<br>`{ "prompt": NEW_REVIEW_PROMPT }`                               | Switch session into "review" mode.                       |
| 7    | (Optional) `mcp__repoprompt__list_selected_files`                                                      | Let the reviewer know which files are in scope.          |

**Shell automation sketch:**

```bash
# auto_review.sh
changed=$(git diff --name-only --staged | jq -R -s -c 'split("\n")[:-1]')
# Assuming a tool `repoprompt` can execute MCP commands
repoprompt exec mcp__repoprompt__set_selection --paths "$changed"
diff=$(git diff --staged)
reviewPrompt="Please perform a strict code review on the diff below:\n\n\`\`\`diff\n$diff\n\`\`\`"
repoprompt exec mcp__repoprompt__set_prompt_state --prompt "$reviewPrompt"
```

**Mental picture:** *"Hand the reviewer a folder already opened to the exact files, with annotated diffs clipped to the cover page."*

---

### 2️⃣ Codemap Explorer

**When to use:** When you're new to a codebase and need to build a mental map of its structure without reading thousands of lines of code.

| Step | Command                                                                                                                | Why                                            |
| ---- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| 1    | `mcp__repoprompt__list_root_folders`                                                                                   | Know which roots are loaded.                   |
| 2    | `mcp__repoprompt__list_codemaps_tree`                                                                                  | Instant bird’s-eye view of every parsed file.  |
| 3    | `mcp__repoprompt__get_codemap`<br>`{ "paths": ["src/api/user.ts"] }`                                                   | Pull just the structure of a heavy file.       |
| 4    | (Optional) Grep by symbol across maps: `mcp__repoprompt__search` with `mode="content"` and `pattern:"class .*Service"` | Find all service classes without loading code. |
| 5    | Toggle focus: `mcp__repoprompt__toggle_file_selection --checked true --path src/api/user.ts`                           | Mark files for deeper reading.                 |
| 6    | `mcp__repoprompt__read_selected_files` when you actually need the body.                                                | Full source on demand.                         |

**Mental picture:** *"Skim the table of contents of a 600-page book before diving into a chapter."*

---

### 3️⃣ Feature-First Planner

**When to use:** At the beginning of a new feature, to bridge the gap between a high-level idea and a concrete, file-aware implementation plan.

| Step | Command                                                                                                                                                  | Payload example                   |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| 1    | `mcp__repoprompt__get_file_tree`                                                                                                                         | Ensure you know where code lives. |
| 2    | Draft idea: `"Add magic-link login"`.                                                                                                                    | Human input.                      |
| 3    | `mcp__repoprompt__set_prompt_state` with that idea as prompt.                                                                                            | Turns session into planning mode. |
| 4    | `mcp__repoprompt__request_plan`<br>`{ "instructions": "Create an end-to-end implementation plan for the prompt above. Reference existing auth files." }` | Auto-generates actionable steps.  |
| 5    | Review plan, iterate prompt as needed.                                                                                                                   | —                                 |
| 6    | `mcp__repoprompt__set_selection` to the files listed in the plan’s "touch points".                                                                       | Pre-select work area.             |

**Mental picture:** *"White-board the feature, then instantly link bullet points to real files in the repo."*

---

### 4️⃣ Targeted Refactor Loop

**When to use:** You've identified a deprecated pattern across the codebase and want to systematically replace it.

1.  **Locate pattern to replace**
    ```bash
    # `both` mode searches paths and content
    repoprompt exec mcp__repoprompt__search --pattern "legacyFn(" --mode both
    ```
2.  **Bulk-select hits**
    Pipe the JSON result's `paths` array into `mcp__repoprompt__set_selection` with `operation: "replace"`.
3.  **Generate refactor blueprint**
    ```json
    // MCP call
    mcp__repoprompt__request_plan({
      "instructions": "For all selected files, create a plan to replace all calls to `legacyFn()` with the new `newApi.fetch()` equivalent, ensuring behavior remains identical."
    })
    ```
4.  **Apply edits** manually or by generating `delegate-edit` XML based on the plan.
5.  **Run unit tests**, then deselect all (`mcp__repoprompt__set_selection` with an empty path list) to reset context for the next task.

**Mental picture:** *"Tag every old API call with a digital highlighter, then hand the sheet to an intern with exact replacement rules."*

---

### 5️⃣ Bug-to-Patch Hot-fix

**When to use:** You have a stack trace from a production error and need to locate, patch, and validate a fix quickly.

1.  **Start with stack trace** → extract the file path(s) and line number(s).
2.  `mcp__repoprompt__toggle_file_selection` for each culprit file to select them.
3.  `mcp__repoprompt__read_selected_files`. You can use the `startLine` and `lineCount` parameters to read just a slice of a huge file around the error.
4.  Patch the bug locally using `delegate-edit`.
5.  `mcp__repoprompt__token_stats` to confirm you stay within context limits before submitting the patch.
6.  Run the **Post-Implementation Auto-Review** workflow to get a quick sanity check on your fix.

**Mental picture:** *"A surgeon receives an X-ray showing a fracture, immediately gets the patient file, makes a precise incision, and sends it for a follow-up scan."*

---

## 3. Next Actions

*   **Pick one recipe** and trial it on a trivial repo to cement muscle memory.
*   Consider adding small shell wrappers (like `repo plan`, `repo review`) around the JSON calls; they make workflows feel like native Git commands.
*   After piloting, refine your review/planning prompts and commit any automation scripts to your *global* `~/.claude/` directory so every project inherits your custom shortcuts.