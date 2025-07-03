# Multi-Mind – Zen-Tool Delegated Collaborative Analysis

Execute a multi-specialist collaborative analysis where every subagent **delegates all substantive work** to the three zen tools:

1. **mcp__zen__chat** – brainstorming, clarification, quick Q&A
2. **mcp__zen__consensus** – multi-model for/against debates & final recommendations
3. **mcp__zen__analyze** – systematic code / file / architecture investigation

> Subagents never do heavy reasoning themselves – they orchestrate these tools and merge the outputs.

**Usage**: `/project:multi-mind <topic> [rounds=3]`

---

## Workflow Overview

1. **Specialist Assignment** – pick 4-6 distinct roles needed for the topic.
2. **Round Loop (default 3)** – each round consists of:
   1. Knowledge acquisition via `mcp__zen__analyze` or web-enabled `mcp__zen__chat`.
   2. Expert reasoning & brainstorming via `mcp__zen__chat`.
   3. Multi-model vetting with `mcp__zen__consensus`.
   4. Subagent produces a concise, tool-sourced report.
3. **Moderator Synthesis** – aggregates reports, identifies gaps, sets next-round focus.
4. **Final Synthesis** – delivers collective insight, key takeaways, open questions, and action items.

---

## Phase 1 – Specialist Assignment & Delegation

First, analyze the topic and decide which expertise areas are required (e.g., Technical, Business Strategy, UX, Security, Legal, Data Science).

For each specialist **launch a task** whose internal steps are purely zen-tool calls:

```text
Task: "Technical Specialist"
1. Brainstorm technical angles with `mcp__zen__chat`
2. Deep-dive relevant code / standards using `mcp__zen__analyze`
3. Validate findings with a supportive vs. critical debate using `mcp__zen__consensus`
4. Return a markdown report summarising validated insights & open questions
```

Repeat for every specialist, tailoring prompts to their domain.

### Prompts Cheat-Sheet

| Goal | Tool | Minimal Prompt Template |
|------|------|-------------------------|
| Ideate / clarify domain-specific questions | `mcp__zen__chat` | "Chat about *<topic>* from a *<domain>* perspective; list unknowns, risks, and research directions." |
| Gather concrete evidence from files / docs | `mcp__zen__analyze` | "Analyze *<paths>* to understand *<focus>* and extract supporting facts." |
| Vet decisions & surface dissent | `mcp__zen__consensus` | "Get consensus on *<proposal>*; have model A support, model B oppose, model C stay neutral." |

---

## Phase 2 – Cross-Pollination Round

After all first-round reports arrive, trigger a second-round task for **each** specialist:

1. Feed them *all peer reports*.
2. Use `mcp__zen__chat` to discuss overlaps / conflicts.
3. Use `mcp__zen__consensus` to stress-test contentious points.
4. Produce an updated report that "builds on, not repeats" prior knowledge.

---

## Phase 3 – Synthesis & Iteration

At the end of every round the **Moderator Subagent**:

1. Uses `mcp__zen__consensus` (neutral stance) to rate report novelty & coverage.
2. Summarises key insights, unresolved questions, and directs next-round objectives.
3. Ensures future prompts discourage repetition and push for depth or breadth where lacking.

---

## Output Protocol

```text
=== MULTI-MIND ANALYSIS: <Topic> ===
Rounds: <X> | Specialists: <Dynamic>

--- ROUND <n> ---
🔍 TOOL OUTPUTS
• <Specialist>: key findings (sourced from zen tools)

🎯 SPECIALIST SYNTHESIS
• Distilled insight per specialist (max 150 words)

🔄 CROSS-POLLINATION
• Notable intersections, conflicts, blind spots

⚖️ MODERATOR SUMMARY
• Progress, gaps, next-round focus

--- FINAL SYNTHESIS ---
🧠 COLLECTIVE INTELLIGENCE OUTCOME
🎯 KEY INSIGHTS
⚠️ REMAINING UNCERTAINTIES
🔮 IMPLICATIONS
```

---

## Anti-Repetition Mechanisms

*Moderator Duties*
- Track covered vs. unexplored areas.
- Redirect specialists away from duplication.
- Require `mcp__zen__consensus` checks before accepting repeated claims.

*Specialist Guidelines*
- Cite zen-tool outputs; avoid paraphrasing without added value.
- Challenge emerging consensus via critical stances in `mcp__zen__consensus`.
- Surface fresh information through targeted `mcp__zen__chat` + websearch.

---

## Success Metrics

- Every round introduces materially new insights.
- Specialists maintain distinct, tool-validated perspectives.
- `mcp__zen__analyze` surfaces concrete evidence and examples.
- `mcp__zen__consensus` debates reveal hidden risks & opportunities.
- Final synthesis offers a richer outcome than any single subagent could achieve.
