#!/bin/bash

# Removes a git worktree and its associated branch.
# Usage: ./scripts/remove-worktree.sh <task-name>

set -e

TASK_NAME=$1
WORKTREE_DIR="../agent-loop-${TASK_NAME}"
BRANCH_NAME="feature/${TASK_NAME}"

if [ -z "$TASK_NAME" ]; then
  echo "Usage: $0 <task-name>"
  exit 1
fi

if [ ! -d "$WORKTREE_DIR" ]; then
  echo "Error: Worktree directory '${WORKTREE_DIR}' not found."
  exit 1
fi

echo "Removing worktree '${WORKTREE_DIR}'..."
git worktree remove "$WORKTREE_DIR"

echo "Worktree removed."
echo "Do you want to delete the associated branch '${BRANCH_NAME}'? (y/n)"
read -r response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  git branch -D "$BRANCH_NAME"
  echo "Branch '${BRANCH_NAME}' deleted."
fi
