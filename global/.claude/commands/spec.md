Creates a detailed feature specification document, including user stories, acceptance criteria, technical requirements, and success metrics.

**Usage**: `/spec "<feature description>"`

## Process:
1.  **Define User Stories**: Capture the feature's requirements from a user's perspective. Create one or more stories in the format: `As a [user type], I want [to perform an action], so that I can [achieve a benefit].`
2.  **List Acceptance Criteria**: For each user story, define specific, testable conditions for success. Use the Gherkin format: `Given [a context], When [I perform an action], Then [I should see an outcome].`
3.  **Detail Technical Requirements**:
    *   **API Changes**: Define any new or modified API endpoints, including routes, methods, request payloads, and response structures.
    *   **Data Model**: Describe any changes to the database schema, including new tables or columns.
    *   **Business Logic**: Outline the core logic, algorithms, and rules that govern the feature.
4.  **Consider Edge Cases and Error Handling**: Explicitly list potential edge cases (e.g., invalid user input, empty states) and define how the system should handle errors gracefully.
5.  **Define Success Metrics**: Identify 1-3 key metrics to measure the feature's success after launch (e.g., user adoption rate, reduction in support tickets, performance targets).
6.  **Generate Specification Document**: Compile all sections into a formal specification document in Markdown.

## Examples:
- `/spec "A user profile page where users can edit their display name and avatar"`

## Notes:
- This command helps align product and engineering by creating a clear, shared understanding of a feature before implementation begins.
- The resulting document should be the single source of truth for the feature.