# Command: Generate Commit Message

Analyze staged changes and generate commit message following conventional format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

Types: feat, fix, docs, style, refactor, perf, test, chore
Scope: affected module/component
Subject: concise description (imperative mood)
Body: what and why (if needed)
Footer: breaking changes, issue references

Keep subject under 50 chars, body lines under 72.