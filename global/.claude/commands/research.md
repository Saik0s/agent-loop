Conducts comprehensive research on a given topic by breaking it down into key questions, searching sources, synthesizing findings, and providing a structured report.

**Usage**: `/research "<topic>"`

## Process:
1.  **Decompose Topic**: Break down the main topic into 3-5 specific, answerable sub-questions that cover the key facets of the topic.
2.  **Execute Search Strategy**: For each sub-question, perform targeted web searches to find high-quality, authoritative sources (e.g., official documentation, reputable technical blogs, academic papers).
3.  **Evaluate Sources**: Briefly assess sources for authority, recency, and potential bias. Prioritize primary sources and expert opinions.
4.  **Synthesize Findings**: Do not just list facts. For each sub-question, synthesize the information from multiple sources into a concise, coherent answer. Use inline citations to attribute information.
5.  **Generate Final Report**: Assemble the synthesized answers into a structured report. Include a high-level summary, the detailed findings for each sub-question, and a list of the primary sources consulted.
6.  **Identify Gaps**: Conclude by listing any open questions or areas where information was inconclusive, and provide recommendations for next steps if applicable.

## Examples:
- `/research "Best practices for API security in 2024"`
- `/research "A comparison of modern frontend frameworks: React vs. Vue vs. Svelte"`

## Notes:
- The output should be a well-structured and easy-to-digest research report, not a simple list of links.
- The value of this command comes from the synthesis and analysis, not just information retrieval.
- For technical research, use `mcp__context7__get-library-docs` for specific libraries and `mcp__exa__web_search_exa` for broader topics.