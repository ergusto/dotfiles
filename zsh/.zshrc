configs=(
  # shell
  "dotfiles"
  "globals"
  "prompt"
  "oh-my-zsh"
  "path"
  "aliases"
  "terminal"
  "iterm2"
  "overrides"
)

for config in "${configs[@]}"; do
  source "$HOME/.config/zsh/$config"
done
