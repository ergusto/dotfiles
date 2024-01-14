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

dir="$HOME/.config/zsh"

for file in "${files[@]}"; do
  source "$dir/$file"
done
