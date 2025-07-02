# Repoprompt Workflow Recipes

This document provides several end-to-end "recipes" that show exactly how you can chain Repoprompt commands to automate common engineering tasks. Each recipe is actionable and clearly states **what**, **why**, and **how**.

## 1. Quick-Scan Table

| # | Workflow title | Primary outcome |
| - | ----------------------------------- | --------------------------------------------------------------------- |
| 1 | **Post-Implementation Auto-Review** | Gather all changed files ➜ set prompt ➜ launch code-review loop |
| 2 | **Codemap Explorer** | Create a mental model of the codebase with near-zero tokens |
| 3 | **Feature-First Planner** | Turn a one-line idea into an implementation plan tied to actual files |
| 4 | **Targeted Refactor Loop** | Isolate a pattern, plan refactor, stage edits, re-test |
| 5 | **Bug-to-Patch Hot-fix** | Start from a stack trace, locate culprit, patch, and validate |
| 6 | **Targeted Security Audit** | Find files with risky patterns and set up a focused security review |
| 7 | **Documentation Outline Generation**| Use codemaps to quickly generate a documentation structure for a module |

## 2. Detailed Playbooks

### 1️⃣ Post-Implementation Auto-Review

**When to use:** After you've staged changes (`git add .`) and want an AI to perform a code review before you commit.

| Step | Command / Action | Purpose |
| ---- | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------ |
| 1 | **Orchestrator Action**: Detect staged files (e.g., via `git diff --name-only --staged`). | Get a list of all files that have been changed. |
| 2 | `mcp__repoprompt__set_selection` | Select only the modified files in Repoprompt for focused analysis. |
| 3 | **Orchestrator Action**: Generate a diff of the staged changes (e.g., via `git diff --staged`). | Create the exact textual changes for the review. |
| 4 | `mcp__repoprompt__set_prompt_state` | Set a new prompt that includes the diff and instructions for a code review. |
| 5 | (Optional) `mcp__repoprompt__read_selected_files` | Load the full content of selected files if the diff alone is insufficient context for the review. |

**Mental picture:** *"Hand the reviewer a folder already opened to the exact files, with annotated diffs clipped to the cover page."*

---

### 2️⃣ Codemap Explorer

**When to use:** When you're new to a codebase and need to build a mental map of its structure without reading thousands of lines of code.

| Step | Command / Action | Purpose |
| ---- | ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1 | `mcp__repoprompt__list_codemaps_tree` | Get an instant bird’s-eye view of every parsed file in the project. |
| 2 | `mcp__repoprompt__get_codemap` | Pull just the structure (classes, functions, imports) of a specific file. |
| 3 | `mcp__repoprompt__search` | Find all instances of a symbol (e.g., a class name) across all codemaps without loading full file content. |
| 4 | `mcp__repoprompt__set_selection` | Select a group of files you want to investigate more deeply. |
| 5 | `mcp__repoprompt__read_selected_files` | Load the full source code for the selected files once you're ready to read the implementation. |

**Mental picture:** *"Skim the table of contents of a 600-page book before diving into a chapter."*

---

### 3️⃣ Feature-First Planner

**When to use:** At the beginning of a new feature, to bridge the gap between a high-level idea and a concrete, file-aware implementation plan.

| Step | Command / Action | Purpose |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1 | **User Action**: Provide a high-level feature description. | Define the goal (e.g., "Add magic-link login"). |
| 2 | `mcp__repoprompt__set_prompt_state` | Set the user's idea as the main prompt for the session. |
| 3 | `mcp__repoprompt__get_file_tree` | Get the project's directory structure to provide context for planning. |
| 4 | `mcp__repoprompt__request_plan` | Ask the planning model to generate an implementation plan that references the actual file structure. |
| 5 | **User/Orchestrator Action**: Review the generated plan for accuracy and completeness. | Validate the proposed approach before starting work. |
| 6 | `mcp__repoprompt__set_selection` | Pre-select all files that the plan identified as needing changes, setting up the workspace for implementation. |

**Mental picture:** *"White-board the feature, then instantly link bullet points to real files in the repo."*

---

### 4️⃣ Targeted Refactor Loop

**When to use:** You've identified a deprecated pattern across the codebase and want to systematically replace it.

| Step | Command / Action | Purpose |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1 | `mcp__repoprompt__search` | Locate all occurrences of the deprecated pattern (e.g., `pattern: "legacyFn("`). |
| 2 | `mcp__repoprompt__set_selection` | Select all files that were found in the search results. |
| 3 | `mcp__repoprompt__request_plan` | Generate a detailed refactoring plan for all the selected files. |
| 4 | **Agent Action**: Execute the plan by generating and applying `delegate edit` changes. | Perform the code modifications as planned. |
| 5 | **Orchestrator Action**: Run tests to validate the refactoring. | Ensure the changes did not break existing functionality. |
| 6 | `mcp__repoprompt__set_selection` | Clear the file selection to reset the context for the next task. |

**Mental picture:** *"Tag every old API call with a digital highlighter, then hand the sheet to an intern with exact replacement rules."*

---

### 5️⃣ Bug-to-Patch Hot-fix

**When to use:** You have a stack trace from a production error and need to locate, patch, and validate a fix quickly.

| Step | Command / Action | Purpose |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1 | **User Action**: Provide the stack trace from the error log. | This is the starting point for the investigation. |
| 2 | **Agent Action**: Extract file paths and line numbers from the trace. | Pinpoint the exact location of the error. |
| 3 | `mcp__repoprompt__set_selection` | Select the culprit file(s) in Repoprompt. |
| 4 | `mcp__repoprompt__read_file` | Read a focused slice of the file around the error line using `startLine` and `lineCount`. |
| 5 | **Agent Action**: Analyze the code and generate a patch using `delegate edit`. | Create the fix for the bug. |
| 6 | **Orchestrator Action**: Apply the patch and run tests to validate the fix. | Confirm the patch works and doesn't introduce regressions. |

**Mental picture:** *"A surgeon receives an X-ray showing a fracture, immediately gets the patient file, makes a precise incision, and sends it for a follow-up scan."*

---

### 6️⃣ Targeted Security Audit

**When to use:** To perform a targeted security audit for a specific vulnerability class (e.g., SQL Injection, XSS).

| Step | Command / Action | Purpose |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1 | `mcp__repoprompt__search` | Search for keywords related to the vulnerability (e.g., `pattern: "innerHTML|dangerouslySetInnerHTML"` for XSS). |
| 2 | `mcp__repoprompt__set_selection` | Select all files that contain the potentially risky keywords. |
| 3 | `mcp__repoprompt__read_selected_files` | Load the full content of selected files, as a security audit requires implementation details. |
| 4 | `mcp__repoprompt__set_prompt_state` | Set a prompt instructing a `security_analyst` persona to check for specific vulnerabilities in the provided files. |
| 5 | **Agent Action**: Analyze the code and report findings. | The security specialist performs the review and provides a list of issues and recommendations. |

**Mental picture:** *"Use a metal detector to find suspicious spots on a map, then send a specialized team to excavate and analyze those specific locations."*

---

### 7️⃣ Documentation Outline Generation

**When to use:** To quickly generate a Markdown documentation outline for a module or directory using its structure.

| Step | Command / Action | Purpose |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1 | `mcp__repoprompt__search` | Find all relevant files within a specific directory path (e.g., `pattern: "src/auth/"`, `mode: "path"`). |
| 2 | `mcp__repoprompt__set_selection` | Select all the files belonging to the module. |
| 3 | `mcp__repoprompt__list_codemaps_for_selection` | Get the token-efficient structure (public APIs, classes, functions) of all selected files. |
| 4 | `mcp__repoprompt__set_prompt_state` | Set a prompt asking the agent to generate a Markdown documentation outline based on the provided codemaps. |
| 5 | **Agent Action**: Generate the documentation outline. | Create a structured document summarizing the module's public interface, ready for content to be filled in. |

**Mental picture:** *"Automatically create a book's table of contents by looking at the chapter titles and section headings, without reading the entire book."*