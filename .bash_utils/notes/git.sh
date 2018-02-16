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
