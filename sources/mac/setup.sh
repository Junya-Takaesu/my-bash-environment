! [ $(uname -s) = 'Darwin' ] && return

# Brew requires this line to initialize brew's environment variables
# Old installation of brew miss this.
# Details here: https://github.com/Homebrew/homebrew-core/issues/125461

# For old macos
# eval $(/usr/local/bin/brew shellenv)

# For new macos (=<13.6.4)
eval $(/opt/homebrew/bin/brew shellenv)

# This is a line that loads brew package of bash-completion@1.
# [ -f /usr/local/etc/bash_completion ] && source /usr/local/etc/bash_completion
# This is a line that loads brew package of bash-completion@2. Commented because this is going to be loaded in my "brew_completion.sh"
# [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

alias start="open"

# enable brew tab completion
[ -f $(dirname ${BASH_SOURCE[0]})/brew_completion.sh ] && source $(dirname ${BASH_SOURCE[0]})/brew_completion.sh
