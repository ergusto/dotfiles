#!/usr/bin/env bash

source utils

os=$(get_os)

logHeading "Installing apps from Brewfile"
brew bundle --file=misc/Brewfile

logHeading "Installing dotfiles for $os"

if [ "$os" == "macos" ]; then
  install_macos
elif [ "$os" == "linux" ]; then
  install_linux
fi
