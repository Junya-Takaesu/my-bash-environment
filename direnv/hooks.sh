# This script defines the _direnv_hook() function, which is used as a hook for the direnv tool.
# The _direnv_hook() function is executed before the shell prompt is displayed and is used to set
# environment variables based on the current directory.
_direnv_hook() {
    local previous_exit_status=$?
    trap -- '' SIGINT
    eval "$("direnv" export bash)"
    trap - SIGINT
    return $previous_exit_status
}
