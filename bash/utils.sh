# Silent mode banner
_my_banner() {
    if [ -n "$MYBASH_SILENT" ]; then
        printf "\n"
        printf "\033[38;5;220m░\033[0m"
        printf "\033[38;5;226m▒\033[0m"
        printf "\033[38;5;190m▓\033[0m"
        printf "\033[38;5;82m█\033[0m"
        printf "  "
        printf "\033[1m\033[38;5;39mMy Bash Env\033[0m"
        printf "  "
        printf "\033[38;5;82m█\033[0m"
        printf "\033[38;5;190m▓\033[0m"
        printf "\033[38;5;226m▒\033[0m"
        printf "\033[38;5;220m░\033[0m"
        printf "\n"
    fi
}

_load_scripts() {
    dir_path=$1
    # Load each setup scripts
    for setup_directory in "$dir_path"/*; do

        setup_script="$setup_directory"/setup.sh

        if [ -f $setup_script ]; then
            source $setup_script

            if [ $? -ne 0 ]; then
                _my_printf "\033[31m$SCRIPT_STATUS_TEMPLATE\033[0m\n" "💩" "$setup_script" "...failed to load"
            else
                _my_printf "\033[32m$SCRIPT_STATUS_TEMPLATE\033[0m\n" "✨" "$setup_script" "...loaded successfully"
            fi
        fi

    done
}

function bk() {
    popd >/dev/null
}

function cd() {
    if [ -z "$1" ]; then
        builtin cd
        return
    fi
    pushd "$1" >/dev/null
}

# Silent mode output wrapper
_my_echo() {
    if [ -z "$MYBASH_SILENT" ]; then
        echo -e "$@"
    fi
}

# Silent mode output wrapper
_my_printf() {
    if [ -z "$MYBASH_SILENT" ]; then
        printf "$@"
    fi
}
