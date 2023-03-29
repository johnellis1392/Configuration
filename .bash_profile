#!/bin/bash
# source ~/.bashrc
source "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cabal/bin

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(jenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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
