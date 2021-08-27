# Source index file with utils
source ~/.zsh/index.zsh

# Variables & Things
export GOPATH=$HOME/workspace/go
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/anaconda3/bin:$PATH

if [[ -e $HOME/.profile ]]; then
  source $HOME/.profile
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/usr/local/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/usr/local/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

