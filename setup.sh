#!/usr/bin/env bash

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

source "$DOTFILES/utils"

parse_args "$@"

os=$(get_os)

if [ "$INTERACTIVE" -eq 1 ]; then
  choose_steps
fi

if [ "$RUN_BREW" -eq 0 ] && [ "$RUN_STOW" -eq 0 ]; then
  echo "Nothing to do."
  exit 0
fi

if [ "$os" == "macos" ]; then
  require_command "git" "Install Xcode CLI Tools: xcode-select --install"
fi

if [ "$RUN_BREW" -eq 1 ]; then
  require_command "brew" "Install Homebrew: https://brew.sh"
fi

if [ "$RUN_STOW" -eq 1 ]; then
  require_command "stow" "Install GNU Stow: brew install stow"
fi

check_deps

if [ "$RUN_BREW" -eq 1 ]; then
  install_brewfile
fi

if [ "$RUN_STOW" -eq 1 ]; then
  logHeading "Installing dotfiles for $os"

  if [ "$os" == "macos" ]; then
    install_macos
  elif [ "$os" == "linux" ]; then
    install_linux
  fi
fi
