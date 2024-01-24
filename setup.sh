#!/usr/bin/env bash

source utils
echo "Installing for $os"

if [ "$os" == "macos" ]; then
  stow_it git
  stow_it lvim
  stow_it tmux
  stow_it zsh
fi
