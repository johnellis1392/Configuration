#!/bin/bash

# This file contains general notes on using Git


# Configure global excludes file:
git config --global core.excludesfile ~/.gitignore_global


# Fancy git log:
git log --graph \
  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' \
  --abbrev-commit \
  --date=relative

# Save fancy log as a global git alias command:
# NOTE: The new command is run as "git lg" through native git
git config --global alias.lg \
  "log --graph --pretty=foramt:'%Cred%h%Creset -%C(yello)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"


# Git diff in one line
git diff --shortstat

# Abbreviated git status, showing unversioned files
git status --porcelain


# Show all versioned files in current working directory
git ls-tree HEAD .

# Save previous command as alias
git config --global alias.ls \
  "ls-tree HEAD ."


# Clean untracked or .gitignore'd files from repository root
git clean -Xf     # -f => --force, -X => Only remove files ignored by git
git clean -Xf -n  # -n => Dry Run
git clean -Xf -i  # -i => Interactive Delete
