#!/usr/bin/env bash

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

source "$DOTFILES/utils"

dispatch "$@"
