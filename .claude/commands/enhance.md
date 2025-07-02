---
description: "The enhance command."
---

Intelligently enhances user input by generating a structured task map, refining an ambiguous query, or improving a code snippet.

**Usage**: `/enhance <user input>`

## Process:
1.  **Analyze Intent**: Determine if the input is a high-level idea, a vague question, or a piece of code.
2.  **Select Strategy**: Based on the intent, choose the appropriate enhancement strategy.
3.  **Generate Enhanced Output**: Provide only the final, improved output.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

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

## Examples:
-   `/enhance "I want to build a real-time chat application"`
-   `/enhance "How can I optimize my database?"`
-   `/enhance "function(a,b){for(let i=0;i<b.length;i++){if(b[i]==a)return true;}return false;}"`

## Notes:
-   The goal is to transform ambiguous input into a concrete, actionable starting point.
