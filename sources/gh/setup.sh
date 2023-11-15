! [ -x "$(command -v gh)" ] && return

eval "$(gh completion -s bash)"
