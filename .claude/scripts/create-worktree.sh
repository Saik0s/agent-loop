#!/bin/bash

# Creates a new git worktree for an isolated agent session.
# Usage: ./scripts/create-worktree.sh <task-name>

set -e

TASK_NAME=$1
WORKTREE_DIR="../agent-loop-${TASK_NAME}"
BRANCH_NAME="feature/${TASK_NAME}"

if [ -z "$TASK_NAME" ]; then
  echo "Usage: $0 <task-name>"
  exit 1
fi

if [ -d "$WORKTREE_DIR" ]; then
  echo "Error: Worktree directory '${WORKTREE_DIR}' already exists."
  exit 1
fi

echo "Creating new worktree for task '${TASK_NAME}'..."
git worktree add "$WORKTREE_DIR" -b "$BRANCH_NAME"

echo "Worktree created at '${WORKTREE_DIR}' on branch '${BRANCH_NAME}'."
echo "To start working, run: cd ${WORKTREE_DIR}"
