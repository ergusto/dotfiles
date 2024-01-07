#!/usr/bin/env bash

source utils

os=$(get_os)

echo "Installing for $os"

ensure brew

install_omz

if [ "$os" == "macos" ]; then
  stow_it git
  stow_it lvim
  stow_it tmux
  stow_it zshrc
fi
