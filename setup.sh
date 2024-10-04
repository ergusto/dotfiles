#!/usr/bin/env bash

source utils

os=$(get_os)

echo "Installing for $os"

if [ "$os" == "macos" ]; then
  install_macos
elif [ "$os" == "linux" ]; then
  install_linux
fi
