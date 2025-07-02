---
description: "The propose-solutions command."
---

Generates and compares distinct, viable solutions for a given problem, each with pros and cons, and provides a final recommendation.

**Usage**: `/propose-solutions "<problem statement>"`

## Process:
1.  **Analyze Problem Statement**: Deconstruct the problem to understand its core constraints, goals, and context.
2.  **Generate Distinct Solutions**: Brainstorm and outline 2-3 genuinely different approaches to solving the problem, representing meaningful trade-offs (e.g., speed vs. cost, simplicity vs. scalability).
3.  **Detail Each Solution**: For each solution, provide:
    *   **Approach**: A brief summary of the implementation strategy.
    *   **Pros**: A bulleted list of 2-3 key advantages.
    *   **Cons**: A bulleted list of 2-3 key disadvantages or trade-offs.
4.  **Provide Recommendation**: After presenting the options, conclude with a single, clear recommendation and justify why it's the best choice for the given context.

## Mandatory Tool Usage:

### Context7 (REQUIRED for technical solutions):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` for mentioned technologies
- Fetch documentation to ensure proposed solutions are feasible

### Analysis & Decision Tools:
- `mcp__zen__thinkdeep` - Deep investigation of problem space
- `mcp__zen__consensus` - Get multi-model consensus on solutions
- `mcp__zen__analyze` - Analyze existing architecture before proposing
- `mcp__sequential__sequentialthinking` - Think through solutions systematically

### Research Tools:
- `mcp__perplexity__perplexity_ask` - Research industry best practices
- `mcp__exa__web_search_exa` - Find case studies and examples
- `mcp__exa__github_search` - Find open source implementations
- `mcp__basic-memory__search_notes` - Find previous solution patterns

## Examples:
-   `/propose-solutions "Select a backend architecture for a new social media application"`

## Notes:
-   This command is for making informed architectural or technical decisions.
-   All proposed solutions should be viable contenders.
