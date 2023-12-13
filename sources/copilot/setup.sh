# Comannd completion is implemented as the copilot completion -h explanes below.

# > copilot completion -h
# Output shell completion code for bash, zsh or fish.
# The code must be evaluated to provide interactive completion of commands.
#
# Usage
#   copilot completion [shell] [flags]
#
# Flags
#   -h, --help   help for completion
#
# Examples
#   Install zsh completion
#   `$ source <(copilot completion zsh)`
#   `$ copilot completion zsh > "${fpath[1]}/_copilot" # to autoload on startup`
#
#   Install bash completion on macOS using homebrew
#   `$ brew install bash-completion   # if running 3.2`
#   `$ brew install bash-completion@2 # if running Bash 4.1+`
#   `$ copilot completion bash > /usr/local/etc/bash_completion.d`
#
#   Install bash completion on linux
#   `$ source <(copilot completion bash)`
#   `$ copilot completion bash > copilot.sh`
#   `$ sudo mv copilot.sh /etc/bash_completion.d/copilot`
#
#   Install fish completion
#   /code$ copilot completion fish | source
#
#   To load completions for each session, execute once:
#   /code$ copilot completion fish > ~/.config/fish/completions/copilot.fish
