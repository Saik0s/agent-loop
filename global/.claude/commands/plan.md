Creates a detailed implementation plan for a new feature or task, including requirements, components, task breakdown, risks, and validation strategy.

**Usage**: `/plan "<feature or task description>"`

## Process:
1.  **Understand Requirements**: Deconstruct the request, clarify ambiguities, and identify core requirements.
2.  **Decompose into Components**: Break down the system into logical modules and define their interfaces.
3.  **Define Task Breakdown**: Create a list of concrete implementation tasks with effort estimates and dependencies.
4.  **Identify Risks & Mitigation**: List potential technical challenges and propose mitigation strategies.
5.  **Define Validation Strategy**: Outline how the solution will be tested (Unit, Integration, E2E) and define success criteria.
6.  **Output Plan**: Generate a structured plan in Markdown.

## Examples:
- `/plan "Implement OAuth 2.0 with Google and GitHub for our web app"`

## Notes:
- The output is a comprehensive Markdown document that can be used to guide development.
- This is a crucial first step for any non-trivial feature.