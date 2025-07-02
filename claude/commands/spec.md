---
description: "The spec command."
---

Creates a detailed feature specification document.

**Usage**: `/spec "<feature description>"`

## Process:
1.  **Define User Stories**: Capture requirements in the format: `As a [user type], I want [action], so that [benefit].`
2.  **List Acceptance Criteria**: For each story, define testable conditions in the Gherkin format: `Given [context], When [action], Then [outcome].`
3.  **Detail Technical Requirements**:
    *   **API Changes**: Define new or modified endpoints, payloads, and responses.
    *   **Data Model**: Describe database schema changes.
    *   **Business Logic**: Outline core algorithms and rules.
4.  **Consider Edge Cases and Error Handling**: List potential edge cases and define graceful error handling.
5.  **Define Success Metrics**: Identify 1-3 key metrics to measure the feature's success (e.g., adoption rate, performance targets).
6.  **Generate Specification Document**: Compile all sections into a formal Markdown document.

## Mandatory Tool Usage:

### Context7 (REQUIRED for technical specs):
- **ALWAYS** use `mcp__context7__resolve-library-id` and `mcp__context7__get-library-docs` for any mentioned technologies
- Ensure technical requirements align with framework capabilities

### Specification Tools:
- `mcp__zen__thinkdeep` - Deep analysis of requirements
- `mcp__zen__consensus` - Get consensus on specifications
- `mcp__sequential__sequentialthinking` - Think through spec systematically
- `mcp__zen__analyze` - Analyze existing system before specifying changes

### Research & Validation:
- `mcp__perplexity__perplexity_ask` - Research industry standards
- `mcp__basic-memory__search_notes` - Find similar specifications
- `mcp__basic-memory__write_note` - Document spec for future reference
- `mcp__zen__challenge` - Challenge assumptions in the spec

## Examples:
-   `/spec "A user profile page where users can edit their display name and avatar"`

## Notes:
-   The output should be a clear and complete guide for the development team.
