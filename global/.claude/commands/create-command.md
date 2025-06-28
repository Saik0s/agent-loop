Guide for creating new custom Claude commands with proper structure.

**Usage**: `/project:create-custom-assistant-command $ARGUMENTS`

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
- **Title**: Clear, action-oriented name
- **Description**: One-line summary
- **Usage**: How to invoke with parameters
- **Process**: Step-by-step instructions
- **Examples**: Concrete usage examples
- **Output**: Expected results
- **Notes**: Special considerations

## Template:
```markdown
One-sentence summary explaining exactly what this command accomplishes and how users will interact with it.

**Usage**: `/command-name [arguments]`

## Process:
1. First step
2. Second step
3. Third step

## Examples:
- Example 1
- Example 2

## Notes:
- Important considerations
- Limitations
```

## Best Practices:
- Keep commands focused and single-purpose
- Include parameter validation
- Provide helpful error messages
- Document expected inputs/outputs
- Consider edge cases
- Test thoroughly before finalizing
