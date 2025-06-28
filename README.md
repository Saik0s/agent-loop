# 🚀 Agentic Engineering: An Orchestration Guide

This guide demonstrates a powerful workflow for software development by orchestrating a team of specialized AI agents. Your role is the **human orchestrator**, guiding the project, while AI agents handle the detailed execution.

## The Core Idea: You Direct, Agents Build

Instead of writing code directly, you will:
1.  **Define the Goal**: State what you want to build in plain English.
2.  **Orchestrate Agents**: Use commands to delegate tasks to specialist AI personas.
3.  **Review and Guide**: Provide feedback and make high-level decisions.

This project is configured with a global `~/.claude/` directory containing personas and command documentation. This `README.md` provides a practical guide to using them.

---

## 💡 Sample Workflow: Building a "Magic Link" Login

Let's walk through building a new feature with a conversational, orchestrated approach.

### 1. The Spark of an Idea (Human to Agent)

**You:**
> `/plan "I want to add a 'magic link' login feature. Users should be able to enter their email, get a link, and click it to log in without a password."`

The `/plan` command is a great starting point for any new feature. It asks the agent to think through the requirements and create a high-level plan.

### 2. The Plan Emerges (Agent Response)

**Orchestrator Agent:**
> Excellent idea. A magic link system enhances user experience. I've created an initial implementation plan.
>
> **Plan: Magic Link Authentication**
>
> 1.  **Specification**: Define user stories, acceptance criteria, and technical requirements.
> 2.  **Architecture**: Design the data models, API endpoints, and email service integration.
> 3.  **Implementation**:
>     -   Build the API endpoint to request a magic link.
>     -   Integrate an email sending service.
>     -   Create a validation endpoint to handle the magic link token.
>     -   Implement session management upon successful login.
> 4.  **Testing**: Write unit and integration tests to ensure security and reliability.
> 5.  **Security Review**: Audit the implementation for potential vulnerabilities.
>
> Does this plan look correct? I can start with the detailed specification.

### 3. Delegating to Specialists (Human to Agent)

**You:**
> The plan looks great. Go ahead and create the detailed specification. Then, have the architect design the system.

**Orchestrator Agent:**
> Understood. I will now delegate these tasks.
>
> `/orchestrate /spec "Magic link login feature as per our plan"`
>
> *(A sub-agent with the **Planner** persona is spawned. It analyzes the request and creates `docs/features/magic-link-login.md` with user stories and acceptance criteria.)*
>
> **Orchestrator Agent:**
> The specification is complete. I will now have the system designed.
>
> `/orchestrate /analyze "Review the magic link spec and design the architecture"`
>
> *(A sub-agent with the **Architect** persona is spawned. It creates architecture diagrams and technical design documents, choosing tools and patterns.)*

The `/orchestrate` command is key. It tells the main agent to delegate a task to the most appropriate specialist.

### 4. Implementation Kick-off (Human to Agent)

**You:**
> The architecture looks solid. Let's start building. Have a `builder` agent implement the API endpoint for requesting the link.

**Orchestrator Agent:**
> Roger that. Spawning a builder for the API endpoint.
>
> `/orchestrate /build "Implement the API endpoint to request a magic link as per the architecture docs"`
>
> *(A sub-agent with the **Builder** persona is spawned. It reads the spec and architecture docs, writes the code, and creates unit tests.)*

### 5. Review and Testing (Human & Agent)

Once the builder is done, you review the code.

**You:**
> The code looks good, but I don't see any rate limiting. That's a security risk. Please have a `security_analyst` review the code and then have the `builder` add rate limiting.

**Orchestrator Agent:**
> Good catch. Security is paramount.
>
> `/orchestrate /analyze "Review the magic link API for security issues, specifically rate limiting."`
>
> *(The **Security Analyst** persona reviews the code and confirms the lack of rate limiting, suggesting a fix.)*
>
> **Orchestrator Agent:**
> The security review is complete. Instructing the builder to add rate limiting.
>
> `/orchestrate /enhance "Add rate limiting to the magic link API endpoint."`

### 6. Finalizing the Feature

This cycle of **delegate -> review -> feedback** continues until all parts of the feature are built, tested, and secured.

**You:**
> `/test "the entire magic link feature"`
>
> *(The **QA Engineer** persona writes and runs end-to-end tests.)*

**You:**
> `/commit "feat(auth): implement magic link login"`
>
> *(The agent analyzes the changes and creates a conventional commit message.)*

---

## 🤖 Key Personas at a Glance

You have a team of specialists at your command. Here are the main players:

| Persona | Role | When to Use | Command Example |
|---|---|---|---|
| **Orchestrator** | **Project Manager** | (This is the default agent) Manages the workflow and delegates tasks. | `/orchestrate ...` |
| **Planner** | **Product Manager** | For defining features, user stories, and acceptance criteria. | `/spec "..."` |
| **Architect** | **System Designer** | For high-level design, choosing tech, and creating diagrams. | `/propose-solutions "..."` |
| **Builder** | **Developer** | For writing code, implementing features, and fixing bugs. | `/build "..."` |
| **QA Engineer** | **Tester** | For writing and running tests of all kinds. | `/test "..."` |
| **Security Analyst**| **Security Expert** | For reviewing code for vulnerabilities and suggesting secure patterns. | `/analyze "..."` (with security context) |

*For full details, see the persona files in `~/.claude/docs/personas/`.*

---

## ⚡ Essential Commands Quick Reference

- `/plan "<description>"`: Create a high-level plan for a new feature.
- `/spec "<description>"`: Create a detailed technical specification.
- `/build "<description>"`: Implement a feature based on a spec.
- `/test "<component>"`: Generate a test suite for a component.
- `/analyze [path]`: Analyze code for quality, security, or architecture.
- `/enhance <input>`: Intelligently improve code or a query.
- `/refactor [path]`: Restructure existing code without changing its behavior.
- `/commit`: Generate a conventional commit message for staged changes.
- `/orchestrate <command>`: Tell the orchestrator to delegate a command to a specialist.

---

## ✅ The Golden Rules of Orchestration

1.  **Delegate, Don't Do**: Your primary role is to delegate. Let the specialist agents handle the "how".
2.  **Think Before You Delegate**: Provide clear, unambiguous instructions. A good plan prevents wasted cycles.
3.  **Review and Iterate**: The power of this workflow comes from the feedback loop. Review the work, provide feedback, and let the agents iterate.

Happy orchestrating! 🚀