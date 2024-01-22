configs=(
  # shell
  "oh-my-zsh"
  "prompt"
  "path"
  "aliases"
  "terminal"
  "overrides"

  # programs
  "fnm"
)

for config in "${configs[@]}"; do
  source "$HOME/.config/zsh/$config"
done
