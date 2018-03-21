# Source index file with utils
source ~/.zsh/index.zsh

# Variables & Things
export GOPATH=/Volumes/data/go
export PATH=$PATH:$GOPATH/bin
if [[ -e $HOME/.profile ]];
  then source $HOME/.profile;
fi
