configs=(
  # shell
  "dotfiles"
  "globals"
  "path"
  "options"
  "history"
  "completion"
  "prompt"
  "aliases"
  "terminal"
  "iterm2"
  "overrides"
  "syntax"
)

for config in "${configs[@]}"; do
  source "$HOME/.config/zsh/$config"
done
