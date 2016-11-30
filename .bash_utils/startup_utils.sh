#!/bin/bash 

# Kill Dock to reset mission control and keyboard settings. 
reset_dock () { 
  defaults write com.apple.dock expose-animation-duration -float 0.1
  Killall Dock
}

