Intelligently enhances user input by generating a structured task map for complex ideas, refining ambiguous queries, or improving code snippets.

**Usage**: `/enhance <user input>`

## Process:
1.  **Analyze User Intent**: Determine if the input is a complex project idea, an ambiguous question, or a code snippet.
2.  **Execute Enhancement**:
    -   For project ideas, generate a detailed Markdown Task Map.
    -   For questions, refine the query to be more specific and actionable.
    -   For code, provide an improved version focusing on clarity, efficiency, and best practices.
3.  **Provide Output**: Return only the enhanced, actionable output.

## Enhancement Types

### Task Map Generation
For complex projects or features, produce a comprehensive Markdown Task Map:
```markdown
# Project: [Clear and Concise Project Name]

## Phase 1: [Descriptive Phase Name]
- [ ] **Task 1.1**: [Unique and descriptive task description]
  - **Agent**: [Most Appropriate Specialist Mode]
  - **Dependencies**: [task_ids this task depends on]
  - **Outputs**: [Expected artifacts like files or documents]
  - **Validation**: [Clear, measurable success criterion]
  - **Human Checkpoint**: [YES/NO - human review required]
  - **Scope**: [Detailed in/out of scope description]
```

### Query Refinement
For general queries, rewrite the query to be more specific, add context, and make it more actionable.

### Code Improvement
For code snippets, analyze for clarity, efficiency, and best practices, then provide a refactored version with explanatory comments.

## Examples:
- **Task Map Generation**: `/enhance "I want to build a real-time chat application"`
- **Query Refinement**: `/enhance "How can I optimize my database?"`
- **Code Improvement**: `/enhance "function(a, b){for(let i=0;i<b.length;i++){if(b[i]==a)return true;}return false;}"`

## Notes:
- This is a versatile command that adapts its output based on your input's intent.
- Use it to kickstart complex projects, get better answers to questions, or quickly refactor code.