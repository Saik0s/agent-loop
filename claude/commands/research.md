---
description: "The research command."
---

Conducts comprehensive research on a given topic and provides a structured report.

**Usage**: `/research "<topic>"`

## Process:
1.  **Decompose Topic**: Break down the main topic into 3-5 specific, answerable sub-questions.
2.  **Execute Search Strategy**: Use the "Broad-to-Narrow" search strategy.
    *   Start with broad, two-word queries.
    *   Scan results to identify 3 focus areas.
    *   Draft and execute narrow queries for each area.
    *   Repeat until answer quality stops improving.
3.  **Evaluate Sources**: Assess sources for authority, recency, and bias. Prioritize primary sources.
4.  **Synthesize Findings**: For each sub-question, synthesize information from multiple sources into a coherent answer. Use inline citations.
5.  **Generate Final Report**: Assemble answers into a structured report with a summary, detailed findings, and a list of sources.
6.  **Identify Gaps**: Conclude by listing open questions and recommending next steps.

## Mandatory Tool Usage:

### Primary Research Tools:
- `mcp__perplexity__perplexity_ask` - Advanced web search with citations
- `mcp__exa__web_search_exa` - Real-time web search
- `mcp__exa__crawling` - Extract content from specific URLs
- `mcp__exa__github_search` - Search GitHub for code examples

### Documentation & Technical Research:
- `mcp__context7__resolve-library-id` - Find technical documentation
- `mcp__context7__get-library-docs` - Get detailed library docs

### Analysis & Synthesis:
- `mcp__zen__thinkdeep` - Deep analysis of research findings
- `mcp__zen__consensus` - Get consensus on conclusions
- `mcp__sequential__sequentialthinking` - Systematic research approach

### Knowledge Management:
- `mcp__basic-memory__search_notes` - Find previous research
- `mcp__basic-memory__write_note` - Document research findings
- `mcp__basic-memory__canvas` - Create visual research maps

## Examples:
-   `/research "Best practices for API security in 2024"`
-   `/research "A comparison of modern frontend frameworks: React vs. Vue vs. Svelte"`
