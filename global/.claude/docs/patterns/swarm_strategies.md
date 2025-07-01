# Swarm Strategy Framework

## Description
The Swarm Strategy Framework provides the `Orchestrator` with a set of patterns for coordinating multiple sub-agents to solve complex problems. Unlike a single, rigid protocol, this framework allows the `Orchestrator` to select the best collaboration strategy for the task at hand, improving the quality and diversity of outcomes.

## When to Use
This framework **MUST** be used for commands that benefit from multiple perspectives, such as those involving planning, creativity, or complex analysis. The specific strategy to be used is defined within the command's documentation.

## Core Strategies

### 1. Debate
- **Goal**: To find the most factually accurate or robust answer through adversarial collaboration.
- **Process**:
    1.  **Delegate**: The `Orchestrator` delegates the task to multiple specialist agents (e.g., three `researcher` agents).
    2.  **Independent Work**: Each agent works independently to arrive at a complete answer or solution.
    3.  **Critique & Refine**: The agents are then shown each other's work. They engage in a structured, multi-turn debate to critique each other's reasoning, identify flaws, and challenge assumptions.
    4.  **Converge**: Through this process of critique and refinement, the agents work to converge on a single, final answer that has survived adversarial scrutiny. The `Orchestrator` synthesizes the final report from the debate.
- **Best for**: `/research`, `/analyze`, or any task where fact-checking, root cause analysis, and logical rigor are paramount.

### 2. Synthesis
- **Goal**: To generate a superior, more comprehensive solution by combining the best elements of multiple diverse approaches.
- **Process**:
    1.  **Delegate**: The `Orchestrator` delegates the task to multiple specialist agents (e.g., three `planner` agents).
    2.  **Independent Creation**: Each agent creates a complete, independent solution (e.g., a full project plan, a complete architectural design).
    3.  **Compare & Combine**: The `Orchestrator` analyzes the diverse outputs. It then acts as an editor, intelligently integrating the best and most complementary ideas from all proposals into a single, synthesized artifact.
    4.  **Final Artifact**: The final output (e.g., a master plan) is a hybrid that is more robust and comprehensive than any single agent's proposal.
- **Best for**: `/plan`, `/spec`, `/propose-solutions`, `/refactor`, or any creative task where combining different perspectives can lead to a more innovative and complete outcome.

## Orchestrator's Responsibility
The `Orchestrator` is responsible for:
- Selecting the appropriate strategy based on the command being executed.
- Spawning the specialist sub-agents.
- Managing the debate or synthesis process.
- Delivering the final, unified output.