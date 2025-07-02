#!/bin/bash

# Master script to create a new worktree, set up the environment,
# and prepare for an agent session.
# Usage: ./scripts/spawn-agent-worktree.sh <task-name>

set -e

TASK_NAME=$1
WORKTREE_DIR="../agent-loop-${TASK_NAME}"

if [ -z "$TASK_NAME" ]; then
  echo "Usage: $0 <task-name>"
  exit 1
fi

# Create the worktree
./scripts/create-worktree.sh "$TASK_NAME"

# Set up the environment
echo "Navigating to ${WORKTREE_DIR} to set up environment..."
cd "$WORKTREE_DIR"
../agent-loop/scripts/setup-environment.sh

echo -e "\n---"
echo "✅ Worktree for task '${TASK_NAME}' is ready!"
echo "Navigate to the new directory to begin:"
echo "cd ${WORKTREE_DIR}"
echo "Then, you can start your agent session."
