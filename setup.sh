#!/usr/bin/env bash

source utils

os=$(get_os)

if [ "$os" == "macos" ]; then
  require_command "git" "Install Xcode CLI Tools: xcode-select --install"
fi

require_command "brew" "Install Homebrew: https://brew.sh"

check_deps

logHeading "Installing apps from Brewfile"

brew bundle --file=misc/Brewfile

logHeading "Installing dotfiles for $os"

if [ "$os" == "macos" ]; then
  install_macos
elif [ "$os" == "linux" ]; then
  install_linux
fi
