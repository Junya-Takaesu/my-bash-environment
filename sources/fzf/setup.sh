# Warning: Using fzf might prevent ssh tab completion. Use peco instead.

! [ -x "$(command -v fzf)" ] && return

# Fuzzy search cli tool
# For the case of fzf installed by "brew"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# eval "$(fzf --bash)" # not sure why this is needed. there is no such option as --bash in fzf --help

# For the case of fzf installed by "apt"
[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash

# Set options for fzf command
export FZF_DEFAULT_OPTS='--height 100% --border'

# Usage: `some_command **<TAB>` will complete the arguments of `some_command`.
# See what commands are supported for this fzf feature: `complete | grep _fzf`
# export FZF_COMPLETION_OPTS='--height 40% --layout=default'

# if this is a MacOs, eval "$(fzf --bash)" is needed.
if [ "$(uname)" = "Darwin" ]; then
  eval "$(fzf --bash)"
fi