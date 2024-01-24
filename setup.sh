#!/usr/bin/env bash

source utils
echo "Installing for $os"

if [ "$os" == "macos" ]; then
  install_macos
fi
