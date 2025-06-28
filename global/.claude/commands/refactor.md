Guides a structured refactoring process for a given code block, from analyzing code smells to planning and executing changes safely.

**Usage**: `/refactor <code block or file path>`

## Process:
1.  **Analyze**: Identify code smells in the target code (e.g., long functions, duplicate logic, poor naming).
2.  **Plan**: Map the old structure to a new, improved one and plan any necessary test modifications.
3.  **Wait for Approval**: Present the refactoring plan, benefits, and effort estimate to the user.
4.  **Execute**: Apply the refactoring in small, verifiable steps, running tests after each change.

## Common Refactoring Patterns
- **Extract Method**: Breaking down long functions into smaller, well-named ones.
- **Replace Conditional with Polymorphism**: Using objects and inheritance to handle complex conditional logic.
- **Extract Variable**: Improving readability by giving a complex expression a clear name.

## Examples:
- `/refactor path/to/long_function.js`
- `/refactor "function process(order) { ... }"`

## Notes:
- This command ensures that refactoring is done systematically and safely, without changing functionality.
- It emphasizes incremental changes and continuous testing.