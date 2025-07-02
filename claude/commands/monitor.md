---
description: "The monitor command."
---

Set up logging, metrics, alerts, and observability for applications.

**Usage**: `/monitor [setup|check] [component]`

## Process:
1. **Assess Needs**: Determine what needs monitoring (errors, performance, usage).
2. **Implement Logging**: Add structured logging at key points.
3. **Set Up Metrics**: Configure performance and business metrics.
4. **Create Alerts**: Define thresholds and notification rules.
5. **Build Dashboards**: Create visualizations for monitoring.

## Mandatory Tool Usage:

### Planning & Design:
- `mcp__zen__thinkdeep` - Design monitoring strategy
- `mcp__zen__analyze` - Analyze monitoring coverage
- `mcp__perplexity__perplexity_ask` - Research monitoring best practices
- `mcp__exa__web_search_exa` - Find monitoring guides

### Implementation:
- `mcp__context7__resolve-library-id` - Get monitoring library docs
- `mcp__context7__get-library-docs` - Understand logging patterns
- `mcp__basic-memory__search_notes` - Find existing monitoring setup
- `mcp__basic-memory__write_note` - Document monitoring decisions

### Visualization:
- `mcp__basic-memory__canvas` - Create monitoring architecture diagrams
- `mcp__zen__docgen` - Generate monitoring documentation
- `mcp__sequential__sequentialthinking` - Plan alert strategies

## Examples:
- `/monitor setup application` - Set up application monitoring
- `/monitor setup infrastructure` - Monitor servers/containers
- `/monitor check api-health` - Verify API monitoring
- `/monitor alerts performance` - Configure performance alerts

## Notes:
- Log at appropriate levels (ERROR, WARN, INFO)
- Avoid logging sensitive data
- Set meaningful alert thresholds
- Include context in log messages