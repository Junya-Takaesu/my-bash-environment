# deprecate this
function peco-select-history() {
    local tac
    which gtac &>/dev/null && tac="gtac" ||
        which tac &>/dev/null && tac="tac" ||
        tac="tail -r"
    # READLINE_LINE=$(HISTTIMEFORMAT= history -w /dev/stdout | $tac | awk '!a[$0]++' | peco --query "$READLINE_LINE")
    READLINE_LINE=$(HISTTIMEFORMAT= history | sed 's/^ *[0-9]* *//' | $tac | awk '!a[$0]++' | peco --layout bottom-up --query "$READLINE_LINE")
    READLINE_POINT=${#READLINE_LINE}
}
bind -x '"\C-r": peco-select-history'
