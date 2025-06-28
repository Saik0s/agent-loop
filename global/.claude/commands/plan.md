Creates a detailed implementation plan for a new feature or task, including requirements, components, task breakdown, risks, and validation strategy.

**Usage**: `/plan "<feature or task description>"`

## Process:
1.  **Clarify Requirements**: Deconstruct the request, ask clarifying questions to resolve ambiguities, and list the core functional and non-functional requirements.
2.  **Decompose into Components**: Break down the system into logical modules (e.g., API, database, UI). Define the responsibilities of each and the interfaces between them.
3.  **Create Task Breakdown**: Create a specific, ordered list of implementation tasks. For each task, provide a brief description, effort estimate (e.g., S, M, L), and any dependencies on other tasks.
4.  **Identify Risks and Mitigation**: List potential technical challenges, architectural risks, or external dependencies. For each risk, propose a concrete mitigation strategy.
5.  **Define Validation Strategy**: Outline how the final solution will be tested and validated. Specify the types of tests (Unit, Integration, E2E) and define the key success criteria.
6.  **Generate Plan Document**: Assemble all sections into a structured Markdown document that serves as a roadmap for development.

## Examples:
- `/plan "Implement OAuth 2.0 with Google and GitHub for our web app"`

## Notes:
- The output is a comprehensive Markdown document that should be clear enough for any developer to begin work.
- This is a crucial first step for any non-trivial feature to ensure alignment and a clear path forward.