Builds a new feature based on a description, creating the necessary code and tests.

**Usage**: `/build "<feature description>"`

## Process:
1.  **Analyze Requirements**: Deconstruct the feature description into specific, testable requirements. If the description is vague, use `/spec` first.
2.  **Create Implementation Plan**: Break down the feature into smaller implementation tasks.
3.  **Implement Incrementally**: Build the feature step-by-step, ensuring each part is tested before moving to the next.
4.  **Write Tests**: Create unit, integration, and/or E2E tests to cover the new functionality. For a strict TDD workflow, use the `/tdd` command.
5.  **Refactor**: Improve the code's structure, clarity, and efficiency without changing its external behavior.
6.  **Final Validation**: Run all tests to ensure the feature is complete, correct, and meets all acceptance criteria.

## Zen Tools Review:
- Use Zen Tools at every stage to double review your approach to ensure that you didn't miss anything.
- Always use zen tools before writing your implementation.

## Examples:
- `/build "an API endpoint to fetch user profiles"`

## Notes:
- This command is for general-purpose feature implementation.
- For a strict Test-Driven Development workflow, use the `/tdd` command.
