# reference:
# https://github.com/aws/aws-cdk/discussions/24380#discussioncomment-5158176
_cdk_yargs_completions() {
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(cdk --get-yargs-completions "${args[@]}")

    COMPREPLY=($(compgen -W "${type_list}" -- ${cur_word}))

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
        COMPREPLY=()
    fi

    return 0
}

[ -x "$(command -v cdk)" ] && complete -o default -F _cdk_yargs_completions cdk
