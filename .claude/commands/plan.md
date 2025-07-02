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

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
-   `/plan "Implement OAuth 2.0 with Google and GitHub for our web app"`

## Notes:
-   The output is a comprehensive Markdown document.
-   This is a crucial first step for any non-trivial feature to ensure alignment.
