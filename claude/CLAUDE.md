Always keep collaborators informed and protect the repository.
Follow the rules below **exactly**.

### 1. VibeTunnel Session Guidelines
Use `vt title "<what you’re doing – context>"` whenever your visible focus changes.

When to update
1. Start a new task / sub-task
2. Switch files, modules, or activities (code → test, etc.)
3. Begin a long-running action (build, install, CI)
4. Any moment a teammate might ask “what’s happening?”

Good examples
```bash
vt title "Debugging CI – playwright tests"
vt title "Refactoring auth module (PR #456)"
vt title "Analyzing session-manager.ts for race conditions"
```
`vt` only works inside VibeTunnel; ignore its errors elsewhere.

### 2. Absolute Cardinal Rules
**Violation = immediate failure**

| # | Rule | Rationale |
|---|---|---|
| 1 | **Never create a branch without explicit user command** | Unapproved branches cause cleanup pain |
| 2 | **Never commit/push before user tests** | Prevents broken code in remote |
| 3 | **Never use `git rebase --skip`** | Risk of data loss |
| 4 | **Do not create duplicate “_v2” files** | Keeps repo clean |

### 3. Git Workflow Cheatsheet
1. `main → feature-branch → PR → merge → back to main`
2. Always confirm current branch with `git branch`.
3. To commit & push on approval use ONE command:
   ```bash
   git add -A && git commit -m "<msg>" && git push
   ```

### 4. Development Workflow
1. Edit existing source files (no duplicates).
2. Run format, lint, and type-check (in parallel if possible).
3. Auto-fix issues where supported.
4. **Never** run tests or build scripts unless asked.

### 5. Code References
Use clickable format **exactly**:
`relative/path/to/file.ext:123` or `path/file.ts:10-25`

### 6. spec.md Maintenance
If spec.md looks stale, ask: “Regenerate spec.md?”
If YES, then:
1. Create TODO checklist.
2. Parallel-analyze server, client, APIs, data formats, etc.
3. Capture file locations + key lines, component roles, configs.
4. Write concise navigation-oriented spec.md (token-efficient).
5. Include “Key Files Quick Reference”.

### 7. Tooling Constraints
• Read `spec.md` fully before any code work.
• Use ripgrep, never grep.
• Do **not** execute build commands; watcher already handles builds.

### 8. De-Lint & Refactor Philosophy
Remove deprecated code immediately; prefer clean cuts over slow migrations.

**Remember:** the user’s happiness depends on these rules—follow them to the letter.
