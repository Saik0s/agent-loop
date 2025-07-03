---
description: "Execute a multi-specialist collaborative analysis where every subagent delegates all substantive work to the three zen tools: mcp__zen__chat, mcp__zen__consensus, and mcp__zen__analyze."
allowed-tools: ["mcp__zen__chat", "mcp__zen__consensus", "mcp__zen__analyze"]
---

## Context

- The user wants to perform a deep, multi-faceted analysis of a topic.
- A single perspective is insufficient to address the complexity of the topic.

## Your task

As the orchestrator, you will execute a multi-specialist collaborative analysis. You will assign specialist roles, manage analysis rounds, and synthesize the final report. Every subagent you create **must** delegate all substantive work to the zen tools.

## Process

1.  **Specialist Assignment**: Analyze the topic and assign 4-6 distinct specialist roles (e.g., Technical, Business Strategy, UX, Security).
2.  **Round-Based Analysis**: Execute a series of analysis rounds (default is 3). In each round:
    a.  **Launch Specialist Tasks**: For each specialist, launch a task that uses zen tools for its analysis (e.g., `mcp__zen__chat` for brainstorming, `mcp__zen__analyze` for code investigation, `mcp__zen__consensus` for debate).
    b.  **Synthesize Reports**: Each specialist subagent produces a concise, tool-sourced report.
    c.  **Cross-Pollination**: In subsequent rounds, provide all peer reports to each specialist to build upon existing knowledge.
3.  **Moderator Synthesis**: After each round, act as the moderator to aggregate reports, identify gaps, and set the focus for the next round.
4.  **Final Synthesis**: After all rounds are complete, deliver a final report that includes the collective insights, key takeaways, open questions, and actionable items.

## Examples

-   `/project:multi-mind "Analyze the feasibility of migrating our backend to a serverless architecture" rounds=3`

## Notes

-   **Subagents must not perform heavy reasoning themselves.** They should orchestrate the zen tools and merge the outputs.
-   **Anti-Repetition**: Use your moderator role to track covered areas and redirect specialists to prevent duplication. Challenge repeated claims using `mcp__zen__consensus`.
-   **Success Metrics**: A successful analysis is one where each round introduces new insights, specialists maintain distinct perspectives, and the final synthesis is richer than any single agent could achieve.
-   **Output Protocol**: Structure your final output clearly, indicating rounds, specialist findings, and the final synthesis.