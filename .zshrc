# Source index file with utils
source ~/.zsh/index.zsh

# Variables & Things
export GOPATH=$HOME/workspace/go
export PATH=$GOPATH/bin:$PATH

if [[ -e $HOME/.profile ]]; then
  source $HOME/.profile
fi
