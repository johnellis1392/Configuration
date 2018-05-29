#!/bin/zsh

# Update Homebrew Packages
#
# NOTE: The ${(z)updated} variable reference here uses
# a shell-specific sigil "(z)" which tells bash to split
# the given string variable by whitespace and turn it
# into an array.
brew-update-all() {
  brew update
  brew upgrade
  brew cleanup

  # Get outdated casks and reinstall them
  updated="$(brew cask outdated --quiet)"
  for item in ${(z)updated}; do
    brew cask reinstall "${item}"
  done

  echo "Done. Homebrew Content Updated."
}
