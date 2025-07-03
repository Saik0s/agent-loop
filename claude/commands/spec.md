---
allowed-tools: []
description: "Creates a detailed feature specification document."
---

## Context

- The user wants to create a detailed specification for a new feature.

## Your Task

Based on the user's feature description, you will create a detailed feature specification document.

## Process

1.  **Define User Stories**: Capture requirements in the format: `As a [user type], I want [action], so that [benefit].`
2.  **List Acceptance Criteria**: For each story, define testable conditions in the Gherkin format: `Given [context], When [action], Then [outcome].`
3.  **Detail Technical Requirements**:
    *   **API Changes**: Define new or modified endpoints, payloads, and responses.
    *   **Data Model**: Describe database schema changes.
    *   **Business Logic**: Outline core algorithms and rules.
4.  **Consider Edge Cases and Error Handling**: List potential edge cases and define graceful error handling.
5.  **Define Success Metrics**: Identify 1-3 key metrics to measure the feature's success (e.g., adoption rate, performance targets).
6.  **Generate Specification Document**: Compile all sections into a formal Markdown document.

## Examples

-   `/spec "A user profile page where users can edit their display name and avatar"`

## Notes

-   The output should be a clear and complete guide for the development team.