#!/bin/bash
# source ~/.bashrc
source "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cabal/bin

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
