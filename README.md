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

`setup.sh` runs interactively by default and asks before each step. Flags for
non-interactive runs:

```sh
./setup.sh -y        # run everything, skip prompts
./setup.sh --brew    # install Brewfile packages only
./setup.sh --stow    # stow config files only
./setup.sh --help    # list options
```

After the first run, `~/.bin/dotfiles` is on your PATH, so subsequent runs
work from anywhere:

```sh
dotfiles             # interactive
dotfiles -y          # run everything
dotfiles --brew      # brew only
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
