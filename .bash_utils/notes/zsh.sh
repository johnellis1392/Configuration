#!/bin/bash

# Change shell to zsh
sudo chsh -s /bin/zsh

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sudo sh

# Start zsh in debug mode
zsh -xv

# Remove git status prompt from zsh
git config --add oh-my-zsh.hide-status 1
git config --add oh-my-zsh.hide-dirty 1

# Available Themes
ZSH_THEME="agnoster"
# robbyrussell, agnoster, juanghurtadoto, miloshadzic

# Complete List of Themes: https://github.com/robbyrussell/oh-my-zsh/wiki/themes
