#!/bin/zsh

# Index file for loading ZSH utils
source ${HOME}/.zsh/misc/index.zsh
source ${HOME}/.zsh/commands/index.zsh
export ZSH=${HOME}/.zsh/oh-my-zsh
source $ZSH/oh-my-zsh.sh



# Fix for Agnoster Theme:
# Overwrite oh-my-zsh's build_prompt function to disable
# unnecessary git repo checks.
#
# Commit 'd6a36b1' causes the agnoster fonts to break in
# iTerm2, so we need to fix these by reintroducing the
# old font dependencies.
#
# Navigate to ~/.zsh/oh-my-zsh and run 'git checkout d6a36b1 themes/agnoster.zsh-theme'
# to checkout the last-working version.
#
# The child ./powerline-fonts project contains the fonts
# required by powerline / agnoster: navigate to 
# ~/.zsh/powerline-fonts and run ./install.sh to install
# the fonts.
#
# After installing powerline fonts, you need to enable them
# by going to Terminal > Preferences > Profiles > Font.
# Click "Change...", and Select a Powerline-enabled
# font (suffixed by "[...] for Powerline").
#
# Good fonts to choose:
# * DejaVu Sans Mono for Powerline
# * Droid Sans Mono Dotted for Powerline
# * Droid Sans Mono for Powerline
# * Droid Sans Mono Slashed for Powerline
# * Fira Mono for Powerline
# * Inconsolata for Powerline
# * Inconsolata-dz for Powerline
# * Inconsolata-g for Powerline
# * Liberation Mono for Powerline
# * Meslo LG L DZ for Powerline
# * Meslo LG L for Powerline
# * Meslo LG M DZ for Powerline
# * Meslo LG M for Powerline
# * Meslo LG S DZ for Powerline
# * Meslo LG S for Powerline
# * Noto Mono for Powerline
# * Roboto Mono for Powerline
# * Roboto Medium for Powerline
# * Source Code Pro for Powerline
# * Ubuntu Mono derivative Powerline
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


# Reset stty on startup: resets flow-control settings
# for zsh to allow ctrl-s & ctrl-q
stty stop undef
stty start undef
