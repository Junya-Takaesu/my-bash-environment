! [ -x "$(command -v composer)" ] && return

eval "$(composer completion bash)"
export PATH="$PATH:$HOME/.composer/vendor/bin"
