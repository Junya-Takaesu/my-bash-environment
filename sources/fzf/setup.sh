# Fuzzy search cli tool
# For the case of fzf installed by "brew"
[ -x "$(command -v fzf)" ] && [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# # For the case of fzf installed by "apt"
[ -x "$(command -v fzf)" ] && [ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash
export FZF_DEFAULT_OPTS='--height 100% --border'
