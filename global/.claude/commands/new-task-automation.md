---
description: Workflow for starting a new task when context window usage exceeds 50%.
author: https://github.com/cline
version: 1.1
tags: ["context-management", "new-task", "workflow"]
globs: ["*"]
---
# MANDATORY: Task Handoff Protocol

**⚠️ CRITICAL INSTRUCTIONS - YOU MUST FOLLOW THESE GUIDELINES ⚠️**

This guide provides **MANDATORY** instructions for breaking down complex tasks and implementing a smooth handoff process using the `new_task` tool. You **MUST** follow these guidelines to ensure continuity and efficient task completion.

## ⚠️ The Trigger: Context Window Exceeds 50%

You **MUST** monitor the context window usage. When it exceeds 50%, you **MUST** initiate a task handoff immediately after completing your current logical step.

**Example Trigger Condition (53% usage):**
```text
# Context Window Usage
105,000 / 200,000 tokens (53%)
```
**Action Required**: When usage is at or above 50%, complete your current thought, then immediately proceed to the handoff process.

## The Handoff Process

### 1. Propose the Handoff
You **MUST** use the `ask_followup_question` tool to offer creating a new task.

**Template:**
```xml
<ask_followup_question>
<question>I've completed [specific accomplishment]. The context window is over 50% full. Shall I create a new task to continue with [remaining work]?</question>
<options>["Yes, create a new task", "No, continue in this session"]</options>
</ask_followup_question>
```

### 2. Create the New Task with Full Context
If the user approves, you **MUST** use the `new_task` tool with comprehensive handoff instructions. Your context block **MUST** be detailed and self-contained.

**Template:**
```xml
<new_task>
<context>
# Task Continuation: [Brief, Descriptive Title]

## 1. Completed Work
- [Detailed list of all completed items and key decisions made]
- [Specific files created or modified with paths]

## 2. Current State
- [Description of the project's current status and what the code does now]
- [Any active processes or required environment setup]
- [State of key files, data, or schemas]

## 3. Next Steps
- [A clear, prioritized list of remaining tasks]
- [Specific implementation details for the next immediate action]
- [Known challenges, open questions, or blockers]

## 4. Reference Information
- [Links to relevant documentation, user preferences, or code patterns to follow]

Please continue by [specific next action].
</context>
</new_task>
```

### Handoff Context Requirements
Your handoff context **MUST** include:
- **Project Goal**: The overall purpose and business value.
- **Architecture**: Key design patterns and decisions.
- **Tech Stack**: All relevant technologies, libraries, and versions.
- **Progress**: Checklists of what is done and what is left.
- **User Preferences**: Specific coding styles or approaches requested by the user.

## Task Planning (Plan Mode)

When planning complex tasks, you **MUST** decompose them into smaller subtasks that can be completed before the context window limit is reached.
- **Decompose**: Break the main goal into logical, discrete subtasks.
- **Prioritize**: Order subtasks based on dependencies.
- **Visualize**: Use Mermaid diagrams to clarify task flow.
- **Get Approval**: Present the plan to the user for feedback before starting implementation.

## ⚠️ FINAL REMINDER: NON-NEGOTIABLE RULE

You **MUST** monitor context window usage. Exceeding 50% usage **MUST** trigger the `new_task` handoff protocol. This is your primary responsibility for managing long-running tasks.