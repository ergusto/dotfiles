files=(
  # shell
  "oh-my-zsh",
  "zsh",
  "prompt",
  "path",
  "aliases",
  "overrides",

  # programs
  "fnm",
)

dir="~/.config/zsh"

for file in files; do
  [ -f "$dir/$file" ] && source "$dir/$file"
done
