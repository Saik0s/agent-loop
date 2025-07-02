---
description: "The review command."
---

Conduct comprehensive code reviews for pull requests, changes, or entire codebases.

**Usage**: `/review [PR URL or file path]`

## Critical Pre-Review Rule:
**NEVER review without context.** Before reviewing:
1. Understand the purpose of the changes
2. Check related issues or requirements
3. Review the PR description and commits
4. Identify affected components

## Process:
1. **Understand Context**: Read PR description, related issues, and change scope.
2. **Review Code Changes**: Examine code for correctness, style, and best practices.
3. **Check for Issues**: Identify bugs, security concerns, performance issues.
4. **Test Functionality**: Verify the changes work as intended.
5. **Provide Feedback**: Give constructive, specific feedback with examples.

## Mandatory Tool Usage:

### Primary Review Tools:
- `mcp__zen__codereview` - Comprehensive code review workflow
- `mcp__zen__secaudit` - Security-focused review
- `mcp__zen__analyze` - Code quality analysis
- `mcp__zen__consensus` - Get consensus on complex changes

### Context & Standards:
- `mcp__context7__resolve-library-id` - Check library best practices
- `mcp__context7__get-library-docs` - Verify correct API usage
- `mcp__basic-memory__search_notes` - Find coding standards
- `mcp__perplexity__perplexity_ask` - Research best practices

### Documentation:
- `mcp__basic-memory__write_note` - Document review feedback
- `mcp__zen__challenge` - Challenge design decisions

## Examples:
- `/review https://github.com/org/repo/pull/123`
- `/review src/services/auth.js`
- `/review --focus security`

## Notes:
- Be constructive and specific in feedback
- Suggest improvements, not just problems
- Consider the bigger picture and architecture
- Praise good practices, not just criticize