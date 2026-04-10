# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that gets symlinked into `$HOME`.

## Install

Install [Xcode Command Line Tools](https://developer.apple.com/xcode/resources/) and [Homebrew](https://brew.sh/) if not already installed:

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then clone and run setup:

```sh
git clone https://github.com/ergusto/dotfiles.git ~/dotfiles
cd ~/dotfiles && bash ./setup.sh
```

## What's included

**Configs:** zsh, neovim, tmux, git

**Tools:** eza, bat, fzf, zoxide, lazygit, powerlevel10k, zsh-autosuggestions, zsh-syntax-highlighting

## Local overrides

These paths are for machine-specific config that shouldn't be in source control:

- `~/.zshrc-local`
- `~/.bin-local`
- `~/.gitconfig-local`
