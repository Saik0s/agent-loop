Intelligently enhances user input by generating a structured task map for complex ideas, refining ambiguous queries, or improving code snippets.

**Usage**: `/enhance <user input>`

## Process:
1.  **Analyze User Intent**: First, determine the nature of the input. Is it a high-level project idea, a vague question, or a piece of code?
2.  **Select Enhancement Strategy**: Based on the intent, apply one of the following enhancement strategies.
3.  **Generate Enhanced Output**: Provide only the final, improved output without conversational filler.

## Enhancement Strategies

### 1. For Complex Ideas: Generate a Task Map
If the input is a project idea (e.g., "build a chat app"), generate a comprehensive Markdown Task Map to structure the work.
```markdown
# Project: [Clear and Concise Project Name]

## Phase 1: [Descriptive Phase Name]
- [ ] **Task 1.1**: [Unique and descriptive task description]
  - **Agent**: [Most Appropriate Specialist Persona]
  - **Dependencies**: [List of task IDs this task depends on]
  - **Outputs**: [Expected artifacts, e.g., `src/api/auth.js`]
  - **Validation**: [Clear, measurable success criterion, e.g., "All auth tests pass"]
  - **Human Checkpoint**: [YES/NO - Is human review required before proceeding?]
  - **Scope**: [Detailed description of what is in and out of scope for this task]
```

### 2. For Ambiguous Questions: Refine the Query
If the input is a vague question (e.g., "how to optimize my database?"), rewrite it to be specific and actionable. Add necessary context and constraints.
- **Original**: "How can I optimize my database?"
- **Enhanced**: "What are the best practices for optimizing a PostgreSQL database for a read-heavy social media application, focusing on indexing strategies and query performance for tables with over 10 million rows?"

### 3. For Code Snippets: Improve the Code
If the input is a code snippet, refactor it for clarity, efficiency, and best practices. Add explanatory comments.
- **Original**: `function(a, b){for(let i=0;i<b.length;i++){if(b[i]==a)return true;}return false;}`
- **Enhanced**:
```javascript
/**
 * Checks if an element exists in an array.
 * @param {*} element - The element to search for.
 * @param {Array} array - The array to search within.
 * @returns {boolean} - True if the element is found, otherwise false.
 */
function includes(element, array) {
  // Use the built-in Array.prototype.includes() method for efficiency and readability.
  return array.includes(element);
}
```

## Examples:
- **Task Map Generation**: `/enhance "I want to build a real-time chat application"`
- **Query Refinement**: `/enhance "How can I optimize my database?"`
- **Code Improvement**: `/enhance "function(a, b){for(let i=0;i<b.length;i++){if(b[i]==a)return true;}return false;}"`

## Notes:
- This is a versatile command that adapts its output based on the user's intent.
- The goal is to transform ambiguous input into a concrete, actionable starting point.