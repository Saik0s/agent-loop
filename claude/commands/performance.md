---
description: "The performance command."
---

Profile code, identify bottlenecks, and optimize for better performance.

**Usage**: `/performance [analyze|optimize] [target]`

## Critical Pre-Performance Rule:
**NEVER optimize without measuring.** Before optimizing:
1. Profile to find actual bottlenecks
2. Establish performance baselines
3. Set clear performance targets
4. Ensure tests exist to prevent breaking functionality

## Process:
1. **Measure Current Performance**: Profile code to establish baselines.
2. **Identify Bottlenecks**: Find the slowest parts using profiling data.
3. **Analyze Root Causes**: Understand why performance issues exist.
4. **Implement Optimizations**: Apply targeted fixes to bottlenecks.
5. **Verify Improvements**: Re-measure to confirm performance gains.

## Mandatory Tool Usage:

### Profiling & Analysis:
- `mcp__zen__analyze` - Analyze code for performance issues
- `mcp__zen__tracer` - Trace execution paths and timing
- `mcp__sequential__sequentialthinking` - Think through optimization strategies
- `mcp__zen__debug` - Debug performance issues

### Research & Best Practices:
- `mcp__context7__resolve-library-id` - Find performance docs
- `mcp__context7__get-library-docs` - Learn optimization techniques
- `mcp__perplexity__perplexity_ask` - Research performance patterns
- `mcp__exa__web_search_exa` - Find optimization guides

### Documentation:
- `mcp__basic-memory__write_note` - Document performance findings
- `mcp__basic-memory__search_notes` - Find previous optimizations
- `mcp__zen__consensus` - Get consensus on trade-offs

## Examples:
- `/performance analyze api/users` - Profile user API endpoint
- `/performance optimize database-queries` - Optimize slow queries
- `/performance benchmark image-processing` - Benchmark image operations

## Notes:
- Measure before and after optimization
- Focus on the biggest bottlenecks first
- Consider trade-offs (memory vs speed)
- Document why optimizations were made