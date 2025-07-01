# plan-repoprompt

Generates a **file-aware** implementation plan for a new feature or task **exclusively through Repoprompt**.

**Usage**: `/plan "<high-level feature or task description>"`

## Process (all steps use Repoprompt commands)

1. **Expand the task**
   - Run `mcp__repoprompt__request_plan` with the raw idea to explode it into bullet-level requirements and clarifying questions.

2. **Locate relevant code**
   - `mcp__repoprompt__get_file_tree` → skim the project layout.
   - Use targeted `mcp__repoprompt__search` queries (path or content) and `mcp__repoprompt__get_codemap` to discover files/modules that will be touched.

3. **Pre-select the files**
   - Pass the discovered paths to `mcp__repoprompt__set_selection` so the planning model has direct file context.

4. **Prime the planner**
   - Call `mcp__repoprompt__set_prompt_state` to combine:
     * the expanded requirements,
     * the selected file list,
     * and an instruction to return a step-by-step plan that references the selected files.

5. **Generate & refine the plan**
   - Invoke `mcp__repoprompt__request_plan` again. The output should include ordered tasks, estimates, dependencies, risk/mitigation, and validation strategy.
   - Iterate by updating the prompt or selection until the plan is accepted.

6. **Publish / hand-off**
   - Save the final Markdown plan (e.g., commit it under `/docs/plans/` or paste in a PR description).

## Validation checklist

- Plan cites concrete file paths.
- Risks and tests are listed.
- Scope matches the original request—no extra work.

## Example

```bash
/plan "Add magic-link login"
```

Running the command triggers the workflow above and produces a ready-to-execute plan linked to real files.
