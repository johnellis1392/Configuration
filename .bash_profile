# Add additional resources to search path
PATH=$PATH:/Users/johnellis/.local/bin

# List of relevant local variables 
source ~/.bash_utils/utils.sh; 
source ~/.bash_utils/startup_utils.sh; 
source ~/.bash_utils/git_utils.sh;
source ~/.bash_utils/proj_utils.sh;
source ~/.bash_utils/test_utils.sh; 

# Note: you can use "."'s in function names in bash

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

# Call remainder of startup functions
source ~/.bash_utils/startup_utils.sh
on_startup;
