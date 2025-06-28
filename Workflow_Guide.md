# 🚀 Ultimate Agentic Engineering Workflow Guide

## ⚡ Critical Rules - READ FIRST!

### 🛑 MANDATORY: Subagent-Only Development
**YOU MUST DELEGATE ALL DEVELOPMENT TO SUBAGENTS!**
- Direct coding = PROJECT FAILURE
- No exceptions for "simple" tasks
- You are an ORCHESTRATOR, not a developer

### 🧠 MANDATORY: Deep Thinking Protocol
**THINK DEEPLY BEFORE EVERY ACTION!**
- No reflexive responses
- Analyze all options
- Consider consequences
- Follow SPARC methodology

---

## 📁 Quick Start Setup

### 1. Install Global Configuration
```bash
# Create directory structure
mkdir -p ~/.claude/commands ~/.claude/docs/personas ~/.claude/docs/patterns

# Copy all global files
cp -r global/.claude/* ~/.claude/

# Verify structure
tree ~/.claude
```

### 2. Setup Project Configuration
```bash
# In your project root
mkdir -p .claude/commands .claude/docs

# Copy and customize project templates
cp -r project/.claude/* .claude/

# Edit project-specific values in .claude/CLAUDE.md
```

### 3. Verify Installation
```bash
# Test global commands
/analyze    # Should work anywhere
/spec       # Should create specifications

# Test project commands (in project directory)
/project:setup     # Should setup environment
/project:deploy    # Should show deployment steps
```

---

## 🔄 Core Development Workflow

### Phase 1: Specification & Planning
```
/spec "User authentication with OAuth and 2FA"
```
**Subagent spawns to:**
- Gather requirements
- Define acceptance criteria
- Identify edge cases
- Create technical spec

### Phase 2: Architecture Design
```
Think deeply about the architecture for the OAuth + 2FA system.
Consider security, scalability, and user experience.
```
**Architect persona:**
- Reviews specification
- Designs system architecture
- Chooses technology stack
- Plans integration points

### Phase 3: Task Decomposition
```
Break down the OAuth + 2FA implementation into manageable tasks.
Create a prioritized task list with dependencies.
```
**Output:**
1. Database schema for auth
2. OAuth provider integration
3. JWT token management
4. 2FA setup flow
5. Session management
6. Security middleware

### Phase 4: Parallel Implementation
```bash
# Spawn multiple subagents for parallel work
claude -p "Implement OAuth provider integration" --permission-mode bypassPermissions &
claude -p "Build 2FA setup and verification flow" --permission-mode bypassPermissions &
claude -p "Create JWT token management service" --permission-mode bypassPermissions &
wait
```

### Phase 5: Integration & Testing
```
/test auth-system
```
**QA subagent:**
- Writes comprehensive tests
- Runs security checks
- Validates edge cases
- Ensures 90%+ coverage

### Phase 6: Security Review
```
--persona security
Review the authentication implementation for vulnerabilities.
Check OWASP Top 10 compliance.
```

### Phase 7: Final Review & Deployment
```
/review
/project:deploy-staging
```

---

## 🤖 Subagent Management Patterns

### Basic Subagent Spawn
```bash
claude -p "CRITICAL: You are a subagent.
1. Read .claude/CLAUDE.md COMPLETELY
2. Implement [specific task]
3. Write tests with 90%+ coverage
4. Update docs
5. Output summary to /subagent_output.md" \
--permission-mode bypassPermissions \
--max-turns 10
```

### Parallel Feature Development
```bash
#!/bin/bash
# develop_features.sh

features=("auth" "api" "frontend" "database")
for feature in "${features[@]}"; do
  (
    claude -p "Implement $feature module following project conventions" \
      --permission-mode bypassPermissions \
      --max-turns 15
  ) &
done
wait
```

### A/B Implementation Testing
```bash
# Test different approaches
mkdir -p approach-a approach-b

(cd approach-a && claude -p "Implement using REST API" --permission-mode bypassPermissions) &
(cd approach-b && claude -p "Implement using GraphQL" --permission-mode bypassPermissions) &
wait

# Compare results
gemini -p "@approach-a/ @approach-b/ Compare these implementations"
```

---

## 🔍 Codebase Analysis with Gemini

### Full Project Analysis
```bash
gemini --all_files -p "Analyze project architecture and identify improvement areas"
```

### Feature Verification
```bash
gemini -p "@src/ @tests/ Verify OAuth implementation completeness.
List any missing security measures or test cases."
```

### Security Audit
```bash
gemini -p "@src/ @api/ Check for:
- SQL injection vulnerabilities
- XSS attack vectors
- Insecure dependencies
- Hardcoded secrets"
```

---

## 📊 Common Scenarios & Solutions

### Debugging Production Issues
```
/debug "Users report intermittent 403 errors on API calls"
```
Subagent will:
1. Analyze error patterns
2. Apply 5 Whys technique
3. Identify root cause
4. Propose minimal fix
5. Add regression tests

### Refactoring Legacy Code
```
/refactor @src/legacy/
```
Process:
1. Analyze code smells
2. Plan refactoring steps
3. Maintain functionality
4. Improve test coverage
5. Document changes

### Performance Optimization
```
/analyze performance
Focus on database queries and API response times
```

### Emergency Hotfix
```bash
# Fast-track critical fix
claude -p "URGENT: Fix authentication bypass vulnerability
- Minimal code change
- Add security test
- Prepare hotfix branch" \
--permission-mode bypassPermissions \
--max-turns 5
```

---

## ✅ Quality Gates Checklist

### Before Starting Work
- [ ] Read .claude/CLAUDE.md completely
- [ ] Understand current sprint goals
- [ ] Review related documentation
- [ ] Plan subagent delegation

### During Development
- [ ] All work via subagents
- [ ] Following project conventions
- [ ] Writing tests alongside code
- [ ] Updating documentation

### Before Completion
- [ ] 90%+ test coverage
- [ ] Security scan passed
- [ ] Code review complete
- [ ] Documentation updated
- [ ] No placeholders remain

---

## 🚨 Troubleshooting

### "Subagent isn't following rules"
```bash
# Be more explicit in instructions
claude -p "CRITICAL: Read .claude/CLAUDE.md FIRST!
You MUST follow ALL project conventions.
Task: [specific task]
Constraints: [explicit rules]"
```

### "Lost track of progress"
```bash
# Summarize current state
find . -name "subagent_output.md" -exec cat {} \;
git log --oneline -10
/project:status
```

### "Tests failing after subagent work"
```bash
# Debug with focused subagent
claude -p "Fix failing tests in auth module.
Run tests, identify issues, fix them.
Do NOT modify functionality." \
--permission-mode bypassPermissions
```

### "Need to verify implementation"
```bash
# Use Gemini for comprehensive check
gemini -p "@src/ @tests/ Verify:
1. All requirements implemented
2. Security best practices followed
3. Test coverage adequate
4. No code smells"
```

---

## 🎯 Best Practices

### 1. **Subagent Instructions**
- Be extremely specific
- Include context and constraints
- Reference documentation
- Set clear success criteria

### 2. **Parallel Work**
- Use git branches for isolation
- Spawn related work together
- Set appropriate turn limits
- Monitor resource usage

### 3. **Documentation**
- Update as you go
- Document decisions
- Keep examples current
- Track technical debt

### 4. **Cost Management**
```bash
# Set limits based on complexity
SIMPLE_TASK_TURNS=5
MEDIUM_TASK_TURNS=10
COMPLEX_TASK_TURNS=20

# Monitor costs
claude -p "task" --max-turns $SIMPLE_TASK_TURNS
```

---

## 💡 Advanced Techniques

### Custom Personas
Create specialized personas:
```
~/.claude/docs/personas/devops_engineer.md
~/.claude/docs/personas/data_scientist.md
~/.claude/docs/personas/ui_designer.md
```

### Workflow Automation
```bash
#!/bin/bash
# auto_workflow.sh

# Full feature workflow
/spec "$1" && \
sleep 2 && \
claude -p "Implement based on spec" --permission-mode bypassPermissions && \
/test && \
/review && \
/commit
```

### Multi-Stage Pipelines
```bash
# Stage 1: Research
/research "Best practices for $TOPIC"

# Stage 2: Design
--persona architect
Design system based on research findings

# Stage 3: Implement
./spawn_variations.sh

# Stage 4: Select best
gemini -p "@variant-*/ Which implementation is best?"
```

---

## 📋 Command Quick Reference

### Command Execution
Commands can be executed in two ways:

1.  **Direct Execution**: Call the command directly. The engine will execute it.
    ```bash
    /analyze
    ```
2.  **Orchestrated Execution**: Use the `/orchestrate <command>` command. This method involves loading the `orchestrator` persona, which then instructs a sub-agent to execute the provided `<command>`. The orchestrator also selects the most relevant specialist persona (e.g., `builder`, `architect`) for the sub-agent to use for the task.
    ```bash
    /orchestrate analyze
    ```

### Project Commands
- `/project:setup` - Environment setup
- `/project:deploy-staging` - Deploy staging
- `/project:release` - Production release
- `/project:generate-migration` - DB migrations
- `/project:run-e2e-tests` - E2E tests

### Personas
- `--persona architect` - System design
- `--persona coder` - Implementation
- `--persona tester` - QA
- `--persona reviewer` - Code review
- `--persona security` - Security audit

---

## 🎯 Remember The Golden Rules

1. **ALWAYS use subagents** - No direct development
2. **THINK before acting** - Deep analysis required
3. **NO placeholders** - Complete implementations only
4. **TEST everything** - 90%+ coverage mandatory
5. **DOCUMENT changes** - Keep docs current
6. **FOLLOW conventions** - No exceptions

**Success = Discipline + Delegation + Deep Thinking**

Happy orchestrating! 🚀