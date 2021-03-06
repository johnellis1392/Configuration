#!/bin/bash

# Kill Dock to reset mission control and keyboard settings.
reset_dock () {
  defaults write com.apple.dock expose-animation-duration -float 0.1
  Killall Dock
}

stty -ixon; # Reset c-s and c-q for terminal emulator
if [ "$(uname)" == "Darwin" ]; then
  # Turn off mouse scroll acceleration on Macs
  defaults write .GlobalPreferences com.apple.mouse.scaling 2;
fi
