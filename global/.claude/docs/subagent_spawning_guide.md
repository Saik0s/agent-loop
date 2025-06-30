# Claude Subagent Spawning Guide

This guide provides patterns for spawning `claude` subagents for various development tasks, from simple execution to complex parallel workflows.

## Basic Spawning & Session Management

**Simple execution:**
```bash
# Simple execution
claude -p "Your prompt here"
```

**JSON output for parsing:**
```bash
# With JSON output for parsing
claude -p "Build feature" --output-format json
```

**Streaming for long tasks:**
```bash
# With streaming for long tasks
claude -p "Complex task" --output-format stream-json --verbose
```

**Start and resume a session:**
```bash
# Capture session ID and continue
SESSION_ID=$(claude -p "Start task" --output-format json | jq -r '.session_id')
claude -p --resume "$SESSION_ID" "Next step"
```

**Continue most recent session:**
```bash
# Continue the most recently active session
claude -p --continue "Add more features"
```

## Core Command Options

**Limit turns to control cost:**
```bash
claude -p "Task" --max-turns 3
```

**Use a custom system prompt:**
```bash
claude -p "Task" --system-prompt "You are an expert in X"
```

**Allow specific tools:**
```bash
claude -p "Task" --allowedTools "Read,Write,Bash"
```

**Disallow specific tools for safety:**
```bash
claude -p "Task" --disallowedTools "Bash(rm)"
```

## Autonomous Operation

**Fully autonomous (auto-accept all):**
```bash
# Bypasses ALL permission prompts
claude -p "Build complete app" --permission-mode bypassPermissions --max-turns 10
```

**Auto-accept file edits only:**
```bash
# Auto-accept edits but prompt for dangerous operations like shell commands
claude -p "Refactor codebase" --permission-mode acceptEdits --max-turns 5
```

**Plan mode only:**
```bash
# Agent will only create a plan, not execute it
claude -p "Task" --permission-mode plan
```

**Combine with tool restrictions for safety:**
```bash
# Run autonomously with guardrails
claude -p "Safe autonomous task" \
  --permission-mode bypassPermissions \
  --disallowedTools "Bash(rm),Bash(git push)" \
  --max-turns 3
```

## Parallel Agentic Workflows

This pattern involves spawning multiple agents in isolated environments to generate diverse solutions to a single problem.

**Generate multiple variations of a new feature:**
```bash
#!/bin/bash
# spawn_variations.sh - Dead simple parallel execution

# Define your variations
for i in {1..5}; do
  mkdir -p "variant-$i"
  (
    cd "variant-$i" && \
    claude -p "Build [YOUR TASK] - Variation $i: [specific approach/style]" \
      --permission-mode bypassPermissions \
      --max-turns 15
  ) &
done

wait
echo "✅ All variations complete. Check variant-*/ directories"
```

**Develop features in parallel on an existing git codebase:**
```bash
#!/bin/bash
# spawn_features.sh - Parallel feature development

FEATURE="implement dark mode"
BASE_BRANCH=$(git branch --show-current)

for approach in "css-variables" "theme-provider" "tailwind-classes"; do
  git checkout -b "feature-$approach" "$BASE_BRANCH"

  (
    claude -p "Add $FEATURE using $approach approach" \
      --permission-mode bypassPermissions \
      --max-turns 20
  ) &
done

wait
echo "✅ Features ready on branches: feature-*"
```

**A/B test different implementations:**
```bash
#!/bin/bash
# ab_test.sh - Compare two approaches

mkdir -p option-a option-b

# Option A
(cd option-a && claude -p "Build a todo app using a minimalist approach" --permission-mode bypassPermissions) &

# Option B
(cd option-b && claude -p "Build a todo app using a feature-rich framework" --permission-mode bypassPermissions) &

wait
echo "✅ Both options ready for comparison"
```

## Monitoring and Safety

**Check success and extract data from JSON output:**
```bash
if RESULT=$(claude -p "$prompt" --output-format json); then
    COST=$(echo "$RESULT" | jq -r '.total_cost_usd')
    echo "Success! Cost: $COST USD"
else
    echo "Failed with exit code $?"
fi
```

**Set a timeout for long-running tasks:**
```bash
timeout 300 claude -p "$prompt" || echo "Timed out"
```

**Set turn limits to manage cost:**
```bash
# Set turn limits based on task complexity
SIMPLE_TASK_TURNS=5
MEDIUM_TASK_TURNS=10
COMPLEX_TASK_TURNS=20

claude -p "Simple task" --max-turns $SIMPLE_TASK_TURNS
```

## Key Principles

- **Keep it simple**: Basic bash patterns are most effective. The `claude` CLI handles progress, errors, and retries automatically. Don't over-engineer with complex monitoring unless you need it for automation.
- **Use `--permission-mode`**: Use `bypassPermissions` for full autonomy or `acceptEdits` for safer automation where shell commands will still require confirmation.
- **Set `--max-turns`**: Always set a turn limit to control costs and prevent infinite loops.
- **Don't capture output you won't use**: Let the CLI display progress naturally. Only capture JSON output when you need to parse it for automation.