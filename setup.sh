#!/usr/bin/env bash

source utils
echo "Installing for $os"

if [ "$os" == "macos" ]; then
  install_macos
elif [ "$os" == "linux" ]; then
  install_linux
fi
