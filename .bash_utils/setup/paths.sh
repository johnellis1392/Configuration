#!/bin/bash

# This file contains all the relevant paths for development
# in various languages

PATH=$PATH:/Users/johnellis/.local/bin;
source $HOME/.cargo/env;
alias subl="/usr/bin/emacs";

export ANDROID_HOME=${HOME}/Library/Android/sdk;
export PATH=${PATH}:$ANDROID_HOME;
export PATH=${PATH}:$ANDROID_HOME/tools;
export PATH=${PATH}:$ANDROID_HOME/platform-tools;

export PATH=${PATH}:/home/celestia/.dev-utils/node_modules/bin/;
export PATH=${PATH}:/home/celestia/.stack/programs/x86_64-linux/ghc-7.10.2/bin;
export PYLEARN2_VIEWER_COMMAND="gwenview";
export PYLEARN2_DATA_PATH=/data/;

export NVM_DIR="/home/celestia/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh";  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH";

# Add Android Studio to Path
export PATH="/home/celestia/.dev-utils/android-studio/bin:$PATH";

# User-level workspace paths
export WORKSPACE=$HOME/workspace;
export RUST_PATH=$WORKSPACE/rust;
export ERLANG_PATH=$WORKSPACE/erlang;
export DOCKER_PATH=$WORKSPACE/docker;
export HASKELL_PATH=$WORKSPACE/Haskell-Dev;
export PROLOG_PATH=$WORKSPACE/prolog;
export NOTEBOOK_PATH=$WORKSPACE/Notebooks;

# Add go path
export GOPATH=$WORKSPACE/go;
export GOBIN=$GOPATH/bin/;
export PATH=$PATH:$GOBIN;
export PATH=${PATH}:/home/celestia/.local/bin;

# Add rvm path
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
