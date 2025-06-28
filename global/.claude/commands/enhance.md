# Command: Prompt Enhancement Specialist

## Overview
Intelligently analyze user input and provide the most appropriate enhancement based on intent: Task Map Generation, Query Refinement, or Code Improvement.

## Usage
Invoke this command when you need to:
- Transform complex project ideas into structured task maps
- Refine ambiguous or vague questions for better responses
- Improve code snippets for clarity, efficiency, or best practices

## Process

1. **Analyze User Intent**
   - Determine if the user is trying to:
     - **Build something complex** → Generate Task Map
     - **Ask a question** → Refine the query
     - **Improve code** → Provide enhanced code

2. **Execute Appropriate Enhancement**
   - Follow the specific guidelines for each enhancement type
   - Provide only the enhanced output without conversational text
   - Ensure output is actionable and complete

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

- [ ] **Task 1.2**: [Another task description]
  - **Agent**: [Specialist Mode]
  - **Dependencies**: [task_ids or "None"]
  - **Outputs**: [expected artifacts]
  - **Validation**: [success criteria]
  - **Human Checkpoint**: [YES/NO]
  - **Scope**: [scope description]

## Phase 2: [Another Descriptive Phase Name]
- [ ] **Task 2.1**: [Task description]
  - **Agent**: [Specialist Mode]
  - **Dependencies**: [1.1, 1.2]
  - **Outputs**: [deliverables]
  - **Validation**: [success criteria]
  - **Human Checkpoint**: [YES/NO]
  - **Scope**: [scope description]
```

### Query Refinement
For general queries:
- Identify ambiguities or areas for improvement
- Rewrite query to be more specific with context
- Suggest alternative phrasings or focus areas
- Make the question more actionable and likely to yield quality answers

### Code Improvement
For code snippets:
- Analyze for clarity, efficiency, and best practices
- Provide refactored version with clear improvement comments
- Suggest alternative approaches or design patterns when appropriate
- Ensure improved code follows project conventions

## Guidelines

### Task Map Requirements
- **Logical Structure**: Tasks flow logically from phase to phase
- **Clear Dependencies**: Each task specifies what must complete first
- **Specific Outputs**: Define concrete deliverables for each task
- **Measurable Validation**: Success criteria must be testable
- **Appropriate Agent Assignment**: Match tasks to suitable specialist modes
- **Human Checkpoints**: Identify critical review points

### Query Refinement Principles
- **Add Context**: Include relevant background information
- **Specify Constraints**: Define limitations or requirements
- **Clarify Intent**: Make the desired outcome explicit
- **Remove Ambiguity**: Eliminate vague or unclear terms
- **Focus Scope**: Narrow down to actionable elements

### Code Enhancement Standards
- **Readability**: Improve variable names, structure, comments
- **Performance**: Optimize algorithms and data structures
- **Best Practices**: Apply language-specific conventions
- **Security**: Address potential vulnerabilities
- **Maintainability**: Make code easier to modify and extend

## Examples

### Input: "I want to build a blog"
**Output Type**: Task Map Generation
**Result**: Comprehensive project breakdown with phases for setup, development, testing, and deployment

### Input: "How do I make my app faster?"
**Output Type**: Query Refinement
**Enhanced Query**: "What specific performance optimization techniques can I apply to my [technology stack] application to reduce page load times and improve response times? My current bottlenecks appear to be [specific areas] and I'm working with constraints of [budget/time/resources]."

### Input: Code snippet with nested loops
**Output Type**: Code Improvement
**Result**: Refactored code with optimized algorithms, better variable names, and explanatory comments

## Best Practices
- Always match enhancement type to user intent
- Provide complete, actionable outputs
- Include specific technical details where relevant
- Consider project context and constraints
- Ensure enhanced content is immediately usable