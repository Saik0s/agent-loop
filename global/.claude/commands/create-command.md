A template for creating new custom commands.

**Usage**: `/create-command <command-name>`

## Command Template
```markdown
One-sentence summary explaining what this command accomplishes.

**Usage**: `/command-name [arguments]`

## Process:
1.  First actionable step.
2.  Second actionable step.
3.  ...

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/command-name example-argument`

## Notes:
-   Important considerations or edge cases.
```

## Best Practices:
-   Keep commands focused and single-purpose.
-   Provide clear, actionable steps in the "Process" section.
-   Include helpful error messages and handle edge cases.
-   Document expected inputs and outputs.
-   Place new project-specific commands in `.claude/commands/`.
-   Place new global commands in `~/.claude/commands/`.
