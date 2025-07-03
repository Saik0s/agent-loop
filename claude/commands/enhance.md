---
allowed-tools: []
description: "Intelligently enhances user input by generating a structured task map, refining an ambiguous query, or improving a code snippet."
---

## Context

- The user has provided input that is ambiguous, high-level, or could be improved.

## Your Task

Based on the user's input, you will intelligently enhance it by generating a structured task map, refining the query, or improving the code snippet.

## Process

1.  **Analyze Intent**: Determine if the input is a high-level idea, a vague question, or a piece of code.
2.  **Select Strategy**: Based on the intent, choose the appropriate enhancement strategy.
3.  **Generate Enhanced Output**: Provide only the final, improved output.

## Examples

-   `/enhance "I want to build a real-time chat application"`
-   `/enhance "How can I optimize my database?"`
-   `/enhance "function(a,b){for(let i=0;i<b.length;i++){if(b[i]==a)return true;}return false;}"`

## Notes

-   **NEVER enhance code without examples.** When enhancing code, search for similar well-written code in the project, use Context7 to find best practices for the specific patterns, look for style guides or conventions in the codebase, and only proceed after gathering concrete examples of good code.
-   The goal is to transform ambiguous input into a concrete, actionable starting point.
