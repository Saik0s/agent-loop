---
description: "Manage project dependencies including updates, security audits, and conflict resolution."
---

Manage project dependencies including updates, security audits, and conflict resolution.

**Usage**: `/dependencies [action] [package]`

## Process:
1. **Audit Current Dependencies**: Check for outdated, vulnerable, or unused packages.
2. **Identify Issues**: Find security vulnerabilities and version conflicts.
3. **Plan Updates**: Determine safe update strategy (patch/minor/major).
4. **Execute Updates**: Update packages with proper testing.
5. **Verify Compatibility**: Ensure all functionality works after updates.

## Mandatory Tool Usage:

### Audit & Analysis:
- `mcp__zen__analyze` - Analyze dependency usage
- `mcp__perplexity__perplexity_ask` - Research security advisories
- `mcp__exa__web_search_exa` - Find migration guides
- `mcp__exa__github_search` - Check package repositories

### Documentation & Planning:
- `mcp__context7__resolve-library-id` - Get latest package docs
- `mcp__context7__get-library-docs` - Understand breaking changes


### Verification:
- `mcp__zen__testgen` - Generate tests for affected code
- `mcp__zen__precommit` - Validate after updates
- `mcp__sequential__sequentialthinking` - Plan update strategy

## Examples:
- `/dependencies audit` - Full security and version audit
- `/dependencies update react@18` - Update specific package
- `/dependencies remove unused` - Clean up unused packages
- `/dependencies check-security` - Security vulnerabilities only

## Notes:
- Always review breaking changes before major updates
- Test thoroughly after updates
- Keep dependencies minimal
- Document why specific versions are pinned