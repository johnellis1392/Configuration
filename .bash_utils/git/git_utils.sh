#!/bin/bash

# Set variables to exit on any statement failure
# NOTE: Never uncomment these; uncommenting these
# lines will source these commands inside the
# global shell environment, meaning whenever a
# function fails, the shell will terminate. Only
# use these on a per-function basis.
# set -e;
# set -o pipefail;


# Print the last diff associated with the current git project
# Equivalent to git show. ie: this function was pointless
glsdiff () (
  flags=$*
  git diff $(echo $(git log --oneline -2 | tail -r | perl -pe 's/^(\w+).*$/$1/g')) $flags
)


# Update git repository
gitup () (
  branch_name=$(git branch | grep -e '^\*\s' | perl -pe 's/^\*\s(.*)/$1/g')
  branch_status=$(git status --short)

  # Stash changes
  if [[ $branch_status != "" ]]; then git stash; fi
  if [[ $branch_name != "master" ]]; then git checkout master; fi

  git fetch
  git pull

  if [[ $branch_name != "master" ]]; then git checkout $branch_name; fi
  if [[ $branch_status != "" ]]; then git stash pop; fi

  unset branch_name
  unset branch_status
  exit 1
)


# Absorb a child repository as a submodule.
# NOTE: Using the [func_name]() (...) syntax creates a
# subshell for the content of the function, so you can
# `set -e` inside the function and exit on error.
# NOTE: The following syntaxes will suppress all output of a command --
# * git status &>/dev/null
# * git status >/dev/null 2>&1
git_absorb_repo() (
  set -e
  set -o pipefail

  # $# is number of arguments, -e '...' checks if a file exists
  [[ $# == 0 || ! -e "$1" ]] && echo "File \"$1\" does not exist" && exit 1
  [[ ! -d $1 ]] && echo "File \"$1\" is not a directory" && exit 1


  local dirname=$(realpath $1)
  local temp_dirname=$(realpath $(mktemp -d ${dirname}.XXXXXX))
  pushd ${dirname}

  [[ $(git status &>/dev/null; echo $?) != 0 || $(git rev-parse --show-toplevel 2>/dev/null) != ${dirname} ]] \
    && echo "Directory \"${dirname}\" is not a valid git repository" && exit 1

  # Get remote url (Assume remote set to origin)
  local remote_url=$(git remote get-url origin)
  popd

  # Rename directory (in case of failure)
  mv ${dirname} ${temp_dirname}/$(basename ${dirname})

  # Add submodule
  git submodule add ${remote_url} ${dirname} \
    || echo "An error occurred while attempting to clone ${remote_url}" \
    && mv ${temp_dirname}/$(basename ${dirname}) ${dirname} \
    && rm -rf ${temp_dirname} \
    && exit 1

  # Delete temp directory
  rm -rf ${temp_dirname}
  exit 0
)


# Get the author of the first commit in the repository
git_orig_author() (
  git show $(git rev-list master | tail -n 1) | grep -e "Author:" | awk '{print $2}'
)
