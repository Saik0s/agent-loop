---
description: "Analyzes and improves an existing Claude command file for clarity, correctness, and adherence to best practices."
---

Analyzes and improves an existing Claude command file for clarity, correctness, and adherence to best practices.

**Usage**: `/fix-optimize-validate-command <command-file-path>`

## Process:
1.  **Analyze Command**: Read the specified command file.
2.  **Identify Issues**: Check for deviations from the standard command template, unclear instructions, or missing sections.
3.  **Propose Improvements**: Suggest specific changes to improve the command's structure, clarity, and actionability. This could include rephrasing steps, adding examples, or clarifying notes.
4.  **Apply Refinements**: Rewrite the command file with the approved improvements.
5.  **Validate Final Command**: Ensure the final command is well-structured, easy to understand, and follows all best practices.

## Mandatory Tool Usage:

### Analysis Tools:
- `mcp__zen__analyze` - Analyze command structure and clarity
- `mcp__zen__consensus` - Get consensus on command improvements
- `mcp__sequential__sequentialthinking` - Think through command flow systematically



### Validation:
- `mcp__zen__challenge` - Critically evaluate the optimized command
- `mcp__zen__chat` - Discuss command improvements

## Examples:
-   `/fix-optimize-validate-command ~/.claude/commands/my-command.md`

## Notes:
-   This command helps maintain the quality and consistency of your custom command library.
-   It focuses on making commands more effective and easier for agents to execute.
