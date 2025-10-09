configs=(
  # shell
  "prompt"
  "oh-my-zsh"
  "path"
  "aliases"
  "terminal"
  "overrides"
)

for config in "${configs[@]}"; do
  source "$HOME/.config/zsh/$config"
done
