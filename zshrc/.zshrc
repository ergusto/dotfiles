files=(
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

for file in "${files[@]}"; do
  source "$HOME/.config/zsh/$file"
done
