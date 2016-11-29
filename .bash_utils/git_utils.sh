#!/bin/bash


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

