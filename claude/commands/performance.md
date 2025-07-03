---
allowed-tools: []
description: "Profile code, identify bottlenecks, and optimize for better performance."
---

## Context

- The user wants to analyze or optimize the performance of the code.

## Your Task

Based on the user's request, you will profile the code, identify bottlenecks, and optimize for better performance.

## Process

1.  **Measure Current Performance**: Profile the code to establish baselines.
2.  **Identify Bottlenecks**: Find the slowest parts using profiling data.
3.  **Analyze Root Causes**: Understand why the performance issues exist.
4.  **Implement Optimizations**: Apply targeted fixes to the bottlenecks.
5.  **Verify Improvements**: Re-measure to confirm performance gains.

## Examples

-   `/performance analyze api/users`
-   `/performance optimize database-queries`
-   `/performance benchmark image-processing`

## Notes

-   **NEVER optimize without measuring.** Before optimizing, profile to find the actual bottlenecks, establish performance baselines, set clear performance targets, and ensure tests exist to prevent breaking functionality.
-   Measure before and after optimization.
-   Focus on the biggest bottlenecks first.
-   Consider trade-offs (memory vs. speed).
-   Document why optimizations were made.
