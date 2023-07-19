#!/bin/bash

# Sets the path
REPO_PATH="/path"

# indicates the branch
BRANCH="main"

# Instructs to update
update_repository() {
  cd "$REPO_PATH" || exit 1
  git pull origin "$BRANCH"
}

# Commands update
update_repository

