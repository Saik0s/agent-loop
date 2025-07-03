---
description: "Handle deployments, releases, and rollbacks with safety checks and documentation."
---

Handle deployments, releases, and rollbacks with safety checks and documentation.

**Usage**: `/deploy [environment] [version]`

## Critical Pre-Deploy Rule:
**NEVER deploy without verification.** Before deploying:
1. Check all tests are passing
2. Review deployment checklist and procedures
3. Verify environment configurations
4. Ensure rollback plan exists

## Process:
1. **Pre-deployment Checks**: Run tests, linting, and build verification.
2. **Create Release Package**: Build and tag the release version.
3. **Deploy to Environment**: Execute deployment scripts for target environment.
4. **Verify Deployment**: Check health endpoints and key functionality.
5. **Document Release**: Update release notes and notify stakeholders.

## Mandatory Tool Usage:

### Deployment Tools:
- `mcp__zen__precommit` - Pre-deployment validation


### Verification Tools:
- `mcp__zen__analyze` - Analyze deployment readiness
- `mcp__perplexity__perplexity_ask` - Research deployment best practices
- `mcp__exa__web_search_exa` - Find deployment guides

### Documentation:


## Examples:
- `/deploy production v2.3.1`
- `/deploy staging latest`
- `/deploy rollback production`

## Notes:
- Always have a rollback plan ready
- Document all deployments for audit trail
- Monitor application after deployment
- Follow environment-specific procedures