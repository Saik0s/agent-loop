---
description: "Use the ''Five Whys'' root cause analysis technique to deeply understand problems."
allowed-tools: []
---

## Context

- The user is facing a problem and wants to understand the root cause.

## Your task

Apply the "Five Whys" root cause analysis technique to identify the root cause of the problem.

## Process

1.  **Define the Problem**: Clearly state the issue or symptom.
2.  **Ask "Why?" Five Times**:
    -   Why did this problem occur? → Answer 1
    -   Why did Answer 1 happen? → Answer 2
    -   Why did Answer 2 happen? → Answer 3
    -   Why did Answer 3 happen? → Answer 4
    -   Why did Answer 4 happen? → Answer 5 (Potential Root Cause)
3.  **Validate Root Cause**: Verify the logical chain and check if addressing the root cause would prevent recurrence.
4.  **Develop Solutions**: Propose solutions that address the root cause, not just the symptoms.

## Examples

**Problem**: Application crashes when processing large files.

1.  **Why?** → The application runs out of memory.
2.  **Why?** → It loads the entire file into memory at once.
3.  **Why?** → The file parser wasn''t designed for streaming.
4.  **Why?** → Initial requirements only specified small files.
5.  **Why?** → The requirements gathering process didn''t consider future growth.

**Root Cause**: Incomplete requirements gathering process.
**Solution**: Implement a streaming parser and improve the requirements process.

## Notes

-   Focus on process and system issues, not on blaming individuals.
-   Look for systemic issues that could cause other problems.
-   Document the analysis for future reference.
-   Involve relevant stakeholders in the process.
-   Test solutions to ensure they address the root cause.
