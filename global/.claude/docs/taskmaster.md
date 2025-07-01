# TaskMaster Documentation

## Quick Start
```bash
# Initialize project with taskmaster
task-master init --name "My App" -y

# Generate tasks from PRD
task-master parse-prd docs/PRD.md

# List all tasks with subtasks
task-master list --with-subtasks

# Get next actionable task
task-master next
```

## Task Structure

### Core Task Properties
- **`id`**: Unique identifier within tag context
- **`title`**: Brief, descriptive title
- **`description`**: Concise summary of the task
- **`status`**: `pending` | `in-progress` | `done` | `review` | `deferred` | `cancelled`
- **`dependencies`**: Array of prerequisite task IDs
- **`priority`**: `high` | `medium` | `low`
- **`details`**: In-depth implementation instructions
- **`testStrategy`**: Verification approach
- **`subtasks`**: Array of smaller tasks with same structure

### Task Addressing
- **Main tasks**: `task-master show 5`
- **Subtasks**: `task-master show 5.2` (subtask 2 of task 5)
- **Multiple tasks**: `task-master show 1,3,5` or `task-master show 44,44.1,55.2`

## Tag System (Multi-Context Management)

Tags provide isolated task contexts for different branches, features, or environments.

```bash
# View all tags
task-master tags

# Create new tag
task-master add-tag feature-auth

# Switch context
task-master use-tag feature-auth

# Copy current tag to new tag
task-master add-tag --copy-from-current new-feature
```

**Key Points:**
- All commands work within the current tag context
- Each tag has independent task numbering (starts from 1)
- Legacy `tasks.json` files auto-migrate to "master" tag
- Use `--tag=<name>` flag to operate on specific tag

## Command Reference

| Command | Purpose | Key Flags | Example |
|---|---|---|---|
| **init** | Bootstrap project | `-y` (no prompts), `--name` | `task-master init -y --name "API"` |
| **parse-prd** | Generate tasks from PRD | `-n`→`--num-tasks`, `-f`→`--force` | `task-master parse-prd docs/prd.txt -n 12` |
| **models** | Configure AI models | `--set-main`, `--set-research`, `--setup` | `task-master models --set-main claude-3-opus` |
| **list** | Show tasks | `-s`→`--status`, `--with-subtasks` | `task-master list -s pending --with-subtasks` |
| **next** | Get next actionable task | - | `task-master next` |
| **show** | View task details | `-i`→`--id` | `task-master show 15.2` |
| **add-task** | Create new task via AI | `-p`→`--prompt`, `--dependencies`, `--research` | `task-master add-task -p "Add payments"` |
| **update-task** | Rewrite single task | `-i`→`--id`, `-p`→`--prompt` | `task-master update-task -i 9 -p "Use PostgreSQL"` |
| **update** | Batch update from ID | `--from`, `-p`→`--prompt` | `task-master update --from 20 -p "Use React Query"` |
| **set-status** | Change task status | `-i`→`--id`, `-s`→`--status` | `task-master set-status -i 8,9 -s done` |
| **expand** | Break down into subtasks | `-i`→`--id`, `--all`, `-n`→`--num`, `--research` | `task-master expand -i 5 -n 4` |
| **move** | Relocate tasks | `--from`, `--to` | `task-master move --from 5.2 --to 7.1` |
| **research** | AI research with fresh info | Query, `--id`, `--files`, `--save-to` | `task-master research "JWT best practices" --save-to 15` |
| **analyze-complexity** | AI complexity scoring | `-t`→`--threshold`, `--research` | `task-master analyze-complexity -t 6` |
| **generate** | Create markdown files | `-o`→`--output` | `task-master generate` |

## Key Command Behaviors

### Multiple Task Display
- **Single ID**: Shows detailed view with full implementation
- **Multiple IDs**: Shows compact table with interactive action menu
- **Action Menu**: Provides copy-paste commands for batch operations

### Status Management
- Marking task as "done" automatically marks all subtasks as "done"
- Dependencies show status indicators (✅ completed, ⏱️ pending)

### Research Integration
- Add `--research` flag to most AI commands for fresh, up-to-date information
- `research` command provides interactive exploration with save options
- Save findings to tasks: `--save-to=15` or `--save-to=15.2`

### Complexity Analysis
- `analyze-complexity` generates AI-scored reports (1-10 scale)
- `complexity-report` displays formatted analysis
- `expand` automatically uses complexity recommendations when available

## Workflow Guide

### 1. **Start Work Session**
```bash
# Check current context and get next task
task-master tags
task-master next
```

### 2. **Work on Task**
```bash
# Mark in progress
task-master set-status -i 15 -s in-progress

# Research if needed
task-master research "How to implement OAuth?" --save-to 15

# Update with findings
task-master update-task -i 15 -p "Use GitHub OAuth flow"
```

### 3. **Complete Task**
```bash
# Mark done
task-master set-status -i 15 -s done

# Check next work
task-master next
```

### 4. **Handle Complex Tasks**
```bash
# Analyze complexity
task-master analyze-complexity

# Break down complex tasks
task-master expand -i 8 --research

# Work on subtasks
task-master show 8.1
task-master set-status -i 8.1 -s in-progress
```

## Best Practices

### Task Organization
- **Use descriptive titles** that explain the task's purpose
- **Define clear dependencies** to ensure correct execution order
- **Break down complex tasks** using `expand` command
- **Use tags** to separate different contexts (branches, features, milestones)

### Development Workflow
- **Start with detailed PRD** for better task generation
- **Review generated tasks** and adjust dependencies
- **Analyze complexity** before starting work (`analyze-complexity`)
- **Research before implementing** for current best practices
- **Update tasks** as implementation evolves

### AI Integration
- **Use research flag** (`--research`) for up-to-date information
- **Save research findings** directly to tasks (`--save-to`)
- **Leverage complexity analysis** for optimal task breakdown
- **Update context** as you learn new information

### Maintenance
- **Regenerate files** after manual JSON edits: `task-master generate`
- **Validate dependencies** periodically: `task-master validate-dependencies`
- **Use meaningful tag names** that reflect their purpose
- **Keep task status current** for accurate next-task recommendations

## Configuration Files
- **`.taskmaster/config.json`**: AI models and settings
- **`.taskmaster/state.json`**: Current tag and session state
- **`.taskmaster/tasks.json`**: All tasks organized by tags
- **`.env`**: API keys for AI services