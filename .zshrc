eval "$(starship init zsh)"

for config_file in ~/.zshrc.d/*.zsh; do
  [ -r "$config_file" ] && source "$config_file"
done

