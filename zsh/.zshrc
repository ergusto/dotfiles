configs=(
  # shell
  "oh-my-zsh"
  "prompt"
  "path"
  "aliases"
  "terminal"
  "overrides"
)

for config in "${configs[@]}"; do
  source "$HOME/.config/zsh/$config"
done
