---
description: "Intelligently enhances user input by generating a structured task map, refining an ambiguous query, or improving a code snippet."
---

Intelligently enhances user input by generating a structured task map, refining an ambiguous query, or improving a code snippet.

**Usage**: `/enhance <user input>`

## Process:
1.  **Analyze Intent**: Determine if the input is a high-level idea, a vague question, or a piece of code.
2.  **Select Strategy**: Based on the intent, choose the appropriate enhancement strategy.
3.  **Generate Enhanced Output**: Provide only the final, improved output.

## Mandatory Tool Usage:

### Context7 (REQUIRED for code enhancement):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` when enhancing code
- Fetch documentation to ensure enhanced code follows best practices

### Enhancement Tools:
- `mcp__zen__thinkdeep` - Deep analysis for complex enhancements
- `mcp__zen__refactor` - For code improvement and optimization
- `mcp__zen__analyze` - Analyze code before enhancement
- `mcp__sequential__sequentialthinking` - Break down complex enhancements

### Research & Context:
- `mcp__perplexity__perplexity_ask` - Research best practices
- `mcp__exa__web_search_exa` - Find relevant examples and patterns


## Enhancement Strategies

### 1. For Complex Ideas: Generate a Task Map
-   **Input**: "build a chat app"
-   **Output**: A comprehensive Markdown Task Map with phases, tasks, dependencies, and validation criteria.

### 2. For Ambiguous Questions: Refine the Query
-   **Input**: "how to optimize my database?"
-   **Output**: "What are the best practices for optimizing a PostgreSQL database for a read-heavy application, focusing on indexing and query performance?"

### 3. For Code Snippets: Improve the Code
-   **Input**: A poorly written function.
-   **Output**: A refactored, well-documented, and efficient version of the function.

## Critical Rule for Code Enhancement:
**NEVER enhance code without examples.** When enhancing code:
1. Search for similar well-written code in the project
2. Use Context7 to find best practices for the specific patterns
3. Look for style guides or conventions in the codebase
4. Only proceed after gathering concrete examples of good code

## Examples:
-   `/enhance "I want to build a real-time chat application"`
-   `/enhance "How can I optimize my database?"`
-   `/enhance "function(a,b){for(let i=0;i<b.length;i++){if(b[i]==a)return true;}return false;}"`

## Notes:
-   The goal is to transform ambiguous input into a concrete, actionable starting point.
