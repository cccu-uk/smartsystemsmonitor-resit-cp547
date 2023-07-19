#!/bin/bash

# Set the path to your Git repository
REPO_PATH="/path/to/your/git/repo"

# Set the branch you want to update
BRANCH="main"

# Function to update the repository
update_repository() {
  cd "$REPO_PATH" || exit 1
  echo "Updating Git repository..."
  git pull origin "$BRANCH"
}

# Check if the Git repository directory exists
if [ ! -d "$REPO_PATH" ]; then
  echo "Error: Git repository directory not found. Please check the path."
  exit 1
fi

# Check if the current directory is a Git repository
if ! git -C "$REPO_PATH" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: The directory specified is not a Git repository."
  exit 1
fi

# Execute the update function
update_repository

echo "Git repository update completed."