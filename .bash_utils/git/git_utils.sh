#!/bin/bash

# Set variables to exit on any statement failure
# set -e;
# set -o pipefail;


# Print the last diff associated with the current git project
# Equivalent to git show. ie: this function was pointless
glsdiff () {
    flags=$*;
    git diff $(echo $(git log --oneline -2 | tail -r | perl -pe 's/^(\w+).*$/$1/g')) $flags;
}


# Update git repository
gitup () {
    branch_name=$(git branch | grep -e '^\*\s' | perl -pe 's/^\*\s(.*)/$1/g');
    branch_status=$(git status --short);

    # Stash changes
    if [[ $branch_status != "" ]]; then git stash; fi
    if [[ $branch_name != "master" ]]; then git checkout master; fi

    git fetch;
    git pull;

    if [[ $branch_name != "master" ]]; then git checkout $branch_name; fi
    if [[ $branch_status != "" ]]; then git stash pop; fi

    unset branch_name;
    unset branch_status;
    return 1;
}


# Absorb a child repository as a submodule.
git_absorb_repo() {
    [[ $# == 0 || ! -e $1 ]] && echo "Specified file does not exist" && return 1;
    [[ ! -d $1 ]] && echo "File is not a directory" && return 1;
    [[ ! -n "$(cd $1 && git status > /dev/null)" ]] && echo "Directory is not a valid git repository" && return 1;

    local dirname = $1;
    local temp_dirname = "${dirname}_temp";

    # Get remote url (Assume remote set to origin)
    local remote_url = $(cd $dirname && git remote get-url origin);

    # Rename directory (in case of failure)
    mv $dirname $temp_dirname;

    # Add submodule
    git submodule add $remote_url || \
        echo "An error occurred while attempting to clone $remote_url" && \
        mv $temp_dirname $dirname && \
        return 1;

    # Delete temp directory
    rm -rf $temp_dirname;
}
