Generates and compares three distinct, viable solutions for a given problem, each with pros and cons, and provides a final recommendation.

**Usage**: `/propose-solutions "<problem statement>"`

## Process:
1.  **Analyze Problem Statement**: Deconstruct the problem to understand its core constraints, goals, and context.
2.  **Generate Three Distinct Solutions**: Brainstorm and outline three genuinely different approaches to solving the problem. The solutions should represent a meaningful trade-off (e.g., speed vs. cost, simplicity vs. scalability).
3.  **Detail Each Solution**: For each of the three solutions, provide:
    *   **Approach**: A brief summary of the implementation strategy.
    *   **Pros**: A bulleted list of 2-3 key advantages.
    *   **Cons**: A bulleted list of 2-3 key disadvantages or trade-offs.
4.  **Provide Recommendation**: After presenting the options, conclude with a single, clear recommendation, and briefly justify why it's the best choice for the given context.

## Swarm Strategy: Synthesis
<!-- Agent Note: This command MUST use the Synthesis strategy from `swarm_strategies.md`. -->
1.  **Delegate**: Concurrently delegate the task of generating three distinct solutions to three independent `architect` sub-agents. This may result in multiple potential solutions.
2.  **Compare Solutions**: The Orchestrator will analyze the proposals, clustering similar ideas and identifying the most promising and genuinely distinct architectural patterns.
3.  **Synthesize Final Proposal**: Select the top three solutions from the collective pool. Refine their pros and cons based on the combined analysis and present them as the final, well-vetted options. This ensures the proposed solutions are diverse and robust.

## Examples:
- `/propose-solutions "Select a backend architecture for a new social media application"` (Might compare Monolithic, Microservices, and Serverless)

## Notes:
- This command is for making informed architectural or technical decisions.
- The key is to provide a balanced and objective comparison to facilitate a good decision.
- Avoid straw-man options; all three solutions should be viable contenders.