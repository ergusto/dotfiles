# dotfiles

Configs are managed with [GNU Stow](https://www.gnu.org/software/stow/) and symlinked into `$HOME`.

## Install

Install [Xcode Command Line Tools](https://developer.apple.com/xcode/resources/), [Homebrew](https://brew.sh/), and [Oh My Zsh](https://ohmyz.sh/) if not already installed:

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
- `~/.bin-local/`
- `~/.gitconfig-local`

## Node package managers

`yarn`/`pnpm` are provided by [Corepack](https://nodejs.org/api/corepack.html), not installed globally. After running `setup.sh`, enable it once:

```sh
corepack enable
```

This creates shims that read each project's `packageManager` field in `package.json` and run the right version per-project. Don't `npm install -g yarn` or `brew install yarn` alongside this — you'll get `PATH` conflicts.

## Troubleshooting

### `brew bundle` fails with "Could not symlink"

Happens when a file at brew's target path already exists from another source (an old `npm install -g`, a manual download, etc.). Example:

```
Error: Could not symlink bin/yarn
Target /opt/homebrew/bin/yarn already exists.
```

Inspect what's there, and **only if you're sure you want brew to own that path**, overwrite it:

```sh
brew link --overwrite --dry-run <formula>   # preview
brew link --overwrite <formula>             # do it
```

This **replaces the existing file** with brew's symlink. If it's something you installed deliberately via another tool, uninstall that first instead.
