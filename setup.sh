#!/usr/bin/env bash

source utils

os=$(get_os)

echo "Installing for $os"

ensure brew

install_omz
