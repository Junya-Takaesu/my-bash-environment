# Warning: Using fzf prevent ssh tab completion. Use peco instead.

# ! [ -x "$(command -v fzf)" ] && return

# # Fuzzy search cli tool
# # For the case of fzf installed by "brew"
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# # For the case of fzf installed by "apt"
# [ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash

# # Set options for fzf command
# export FZF_DEFAULT_OPTS='--height 100% --border'

# # Usage: `some_command **<TAB>` will complete the arguments of `some_command`.
# # See what commands are supported for this fzf feature: `complete | grep _fzf`
# export FZF_COMPLETION_OPTS='--height 100% --layout=default'
