**Branching Rules**
-  Never create a branch without explicit user command (unapproved branches cause cleanup pain).
-  Never commit/push before user tests (prevents broken code in remote).
-  Never use `git rebase --skip` (risk of data loss).
-  Do not create duplicate “_v2” files (keeps repo clean).

**Git Workflow Cheatsheet**
-  `main → feature-branch → PR → merge → back to main`.
-  Always confirm current branch with `git branch`.
-  To commit & push on approval, use ONE command:
  ```bash
  git add -A && git commit -m "<msg>" && git push
  ```

**Development Workflow**
-  Edit existing source files (no duplicates).
-  Run format, lint, and type-check (in parallel if possible).
-  Auto-fix issues where supported.
-  **Never** run tests or build scripts unless asked.

**Code References**
-  Use clickable format **exactly**: `relative/path/to/file.ext:123` or `path/file.ts:10-25`.

**spec.md Maintenance**
-  If spec.md looks stale, ask: “Regenerate spec.md?”
-  If YES, then:
  - Create TODO checklist.
  - Parallel-analyze server, client, APIs, data formats, etc.
  - Capture file locations + key lines, component roles, configs.
  - Write concise navigation-oriented spec.md (token-efficient).
  - Include “Key Files Quick Reference”.

**Tooling Constraints**
-  Read `spec.md` fully before any code work.
-  Use ripgrep, never grep.
-  Do **not** execute build commands; watcher already handles builds.

**De-Lint & Refactor Philosophy**
-  Remove deprecated code immediately; prefer clean cuts over slow migrations.

**Remember:** the user’s happiness depends on these rules—follow them to the letter.
