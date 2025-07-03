---
description: "Guide for creating new custom Claude commands with proper structure."
---

## Process:

### 1. Understanding Purpose
- What problem does this command solve?
- Who will use this command?
- What is the expected output?
- How will users interact with it?

### 2. Category Classification
Determine command type:
- **Planning**: Project setup, architecture decisions
- **Implementation**: Code generation, feature development
- **Analysis**: Code review, performance analysis
- **Testing**: Test creation, validation
- **Documentation**: Docs generation, updates
- **Workflow**: Multi-step processes
- **Utility**: Helper commands, tools

### 3. Pattern Selection
Study similar existing commands:
- Analyze structure and flow
- Note common patterns
- Identify reusable components
- Follow established conventions

### 4. Command Location
Choose appropriate location:
- **Project-specific**: `.claude/commands/`
- **User-level**: `~/.claude/commands/`
- Consider reusability and context

### 5. Command Structure
Create with these sections:
- **Frontmatter**: Description, allowed tools.
- **Context**: Contextual information about the command.
- **Your task**: The task that the command will accomplish.
- **Process**: Step-by-step instructions
- **Mandatory Tool Usage**: List all tools that must be used in the command.
- **Examples**: Concrete usage examples
- **Notes**: Special considerations, best practices, etc.

## Command Template
```markdown
---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*)
description: Create a git commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

### Reference a specific file
Review the implementation in @src/utils/helpers.js

### Reference multiple files
Compare @src/old-version.js with @src/new-version.js

## Your task

Based on the above changes, create a single git commit.

## Process:

1. First step
2. Second step
3. Third step

## Mandatory Tool Usage:

- `mcp__zen__debug` - Systematic root cause analysis workflow
- `mcp__zen__tracer` - Trace code execution paths
- `mcp__zen__analyze` - Analyze code for potential issues
- `mcp__sequential__sequentialthinking` - Think through complex debugging scenarios

## Examples:

- Example 1
- Example 2

## Notes:

- Important considerations
- Limitations
- Best practices
```

## Best Practices:
-   Keep commands focused and single-purpose.
-   Provide clear, actionable steps in the "Process" section.
-   Include helpful error messages and handle edge cases.
-   Document expected inputs and outputs.
-   Place new project-specific commands in `.claude/commands/`.
-   Place new global commands in `~/.claude/commands/`.
