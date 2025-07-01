Creates a detailed implementation plan for a new feature or task, including requirements, components, task breakdown, risks, and validation strategy.

**Usage**: `/plan "<feature or task description>"`

## Process:
1.  **Clarify Requirements**: Deconstruct the request, ask clarifying questions to resolve ambiguities, and list the core functional and non-functional requirements.
    <!-- Agent Note: If the request is vague, consider using the `/spec` command first to formalize requirements. -->
2.  **Decompose into Components**: Break down the system into logical modules (e.g., API, database, UI). Define the responsibilities of each and the interfaces between them.
    <!-- Agent Note: Use `mcp__repoprompt__list_codemaps_tree` to understand the existing project structure and ensure the new components fit in logically. -->
3.  **Create Task Breakdown**: Create a specific, ordered list of implementation tasks. For each task, provide a brief description, effort estimate (e.g., S, M, L), and any dependencies on other tasks.
4.  **Identify Risks and Mitigation**: List potential technical challenges, architectural risks, or external dependencies. For each risk, propose a concrete mitigation strategy.
5.  **Define Validation Strategy**: Outline how the final solution will be tested and validated. Specify the types of tests (Unit, Integration, E2E) and define the key success criteria.
6.  **Generate Plan Document**: Assemble all sections into a structured Markdown document that serves as a roadmap for development.

## Multi-Agent Consensus (MAC) Protocol
<!-- Agent Note: This is a MANDATORY step for this command. -->
1.  **Spawn Agents**: Concurrently delegate this planning task to three independent `planner` sub-agents.
2.  **Compare Plans**: Analyze the three resulting plans. Look for differences in component decomposition, task breakdown, and risk assessment.
3.  **Synthesize Final Plan**: Create a single, master plan that integrates the best ideas from all three agents.
    - Take the component breakdown from Agent A's plan.
    - Incorporate the detailed risk analysis from Agent B.
    - Add the comprehensive validation strategy from Agent C.
- **Final Output**: The resulting document is more robust, comprehensive, and well-vetted than any single agent's output could have been.

## Orchestrator's Responsibility
The `Orchestrator` is responsible for:
- Selecting the appropriate strategy based on the command being executed.
- Spawning the specialist sub-agents.
- Managing the debate or synthesis process.
- Delivering the final, unified output.

## Examples:
- `/plan "Implement OAuth 2.0 with Google and GitHub for our web app"`

## Notes:
- The output is a comprehensive Markdown document that should be clear enough for any developer to begin work.
- This is a crucial first step for any non-trivial feature to ensure alignment and a clear path forward.