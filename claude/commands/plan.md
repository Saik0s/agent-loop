---
description: "The plan command."
---

Creates a detailed implementation plan for a new feature or task.

**Usage**: `/plan "<feature or task description>"`

## Process:
1.  **Clarify Requirements**: Deconstruct the request and list the core functional and non-functional requirements. If the request is vague, consider using `/spec` first.
2.  **Decompose into Components**: Break down the system into logical modules (e.g., API, database, UI). Define their responsibilities and interfaces.
3.  **Create Task Breakdown**: Create a specific, ordered list of implementation tasks. For each task, provide a description and dependencies.
4.  **Identify Risks and Mitigation**: List potential technical challenges or dependencies and propose mitigation strategies for each.
5.  **Define Validation Strategy**: Outline how the final solution will be tested, specifying test types (Unit, Integration, E2E) and success criteria.
6.  **Generate Plan Document**: Assemble all sections into a structured Markdown document that serves as a roadmap for development.

## Mandatory Tool Usage:

### Context7 (REQUIRED FIRST):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` before planning
- Fetch documentation for all technologies mentioned in the feature
- This ensures the plan uses correct APIs and best practices

### Planning Tools:
- `mcp__zen__thinkdeep` - Comprehensive investigation for complex planning
- `mcp__zen__consensus` - Get consensus on architectural decisions
- `mcp__sequential__sequentialthinking` - Break down planning systematically
- `mcp__zen__analyze` - Analyze existing code before planning changes

### Research & Context:
- `mcp__perplexity__perplexity_ask` - Research best practices and patterns
- `mcp__exa__web_search_exa` - Find implementation examples
- `mcp__basic-memory__search_notes` - Find similar plans and patterns
- `mcp__basic-memory__write_note` - Document the plan for future reference

## Examples:
-   `/plan "Implement OAuth 2.0 with Google and GitHub for our web app"`

## Notes:
-   The output is a comprehensive Markdown document.
-   This is a crucial first step for any non-trivial feature to ensure alignment.
