---
allowed-tools: []
description: "You will generate LLM-optimized documentation with concrete file references and flexible formatting."
---

## Context

- The user wants to generate or update the project documentation.

## Your Task

You will generate LLM-optimized documentation with concrete file references and flexible formatting.

## Process

1.  **Analyze the codebase systematically** across 7 key areas (merging development+patterns).
2.  **Create or update docs** in `docs/*.md` with concrete file references.
3.  **Synthesize final documentation** into a minimal, LLM-friendly README.md.
4.  **Eliminate all duplication** across files.

## Examples

-   `/update-project-docs`

## Notes

-   Each generated file MUST start with a timestamp header: `<!-- Generated: YYYY-MM-DD HH:MM:SS UTC -->`
-   The documentation should be token-efficient, reference-heavy, and provide practical examples.
-   There should be no duplication of information across files.
-   All file paths in the documentation must be accurate and helpful.