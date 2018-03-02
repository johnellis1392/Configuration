#!/bin/bash


# Function for recursively updating individual submodules
# for a project recursively.
git_recursive_update() {

  # 1. Git stash

  # 2. Save current branch name

  # 3. Git checkout master

  # 4. Git pull

  # 5. Recurse for all direct submodules
  #
  # NOTE: The issue here is that we don't want to recurse
  # into submodules that aren't owned by the current user.
  # We do want to update them, but we don't want to push
  # any changes to them, so maybe we need two different
  # functions for this; one to update owned repositories,
  # and another to update unowned repositories.
  #
  # NOTE: One way to disable recursing into submodules that
  # aren't owned by the current user is by getting the origin
  # ref for "master" on the current branch and only updating
  # branches that have that same remote branch.

  # 6. Add new revisions for direct submodules

  # 7. Commit & Push

  # 8. Checkout Saved Branch

  # 9. Pop Stashed Changes

  return 0
}
