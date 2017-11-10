#!/bin/zsh

completions_dir=${HOME}/.zsh/completion
# fpath=(${completions_dir} ${fpath})
autoload -Uz compinit && compinit -i
