#!/usr/bin/env bash

source utils

os=$(get_os)

echo "Installing apps from Brewfile"
brew bundle --file=misc/Brewfile

echo "Installing dotfiles for $os"

if [ "$os" == "macos" ]; then
  install_macos
elif [ "$os" == "linux" ]; then
  install_linux
fi
