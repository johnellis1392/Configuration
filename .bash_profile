# Add additional resources to search path
PATH=$PATH:/Users/johnellis/.local/bin

# Source relevant local files
for util in $(ls ~/.bash_utils); do
  source ~/.bash_utils/$util;
done

# Note: you can use "."'s in function names in bash
source $HOME/.cargo/env

# ##########
# Git Bash utils

# Enable tab completion
source ~/.bash_utils/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/.bash_utils/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# Call remainder of startup functions; this function should
# exist inside the ~/.bash_utils/startup_utils.sh file.
on_startup;
