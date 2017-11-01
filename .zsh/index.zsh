#!/bin/zsh

# Index file for loading ZSH utils
source ${HOME}/.zsh/misc/index.zsh
export ZSH=/Users/johnellis/.zsh/oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Fix for Agnoster Theme:
# Overwrite oh-my-zsh's build_prompt function to disable
# unnecessary git repo checks.
#
# Commit 'd6a36b1' causes the agnoster fonts to break in
# iTerm2, so we need to fix these by reintroducing the
# old font dependencies.
#
# The child ./powerline-fonts project contains the fonts
# required by powerline / agnoster: navigate to 
# ~/.zsh/powerline-fonts and run ./install.sh to install
# the fonts.
build_prompt() {
  RETVAL=$?
  prompt_status
  # prompt_virtualenv # NOTE: Added, but not necessary
  prompt_context
  prompt_dir
  prompt_git
  # Disable unused version control systems
  # prompt_bzr
  # prompt_hg
  prompt_end
}
