# To use the direnv CLI tool, follow these steps:
# 1. Install direnv on your system. You can download direnv from the official website [^1] or install it using a package manager like apt or snap [^2].
# 2. Create a .envrc file in your project directory. The .envrc file should contain environment variables in the "export VAR_NAME=VAR_VALUE" syntax code.
# 3. With conditions above met, the this setup.sh is run when the terminal starts and direnv will be enabled.
#
# Footnotes:
# [^1]: https://direnv.net/
# [^2]: https://www.tecmint.com/manage-project-specific-environment-variables-in-linux/

! [ -x "$(command -v direnv)" ] && return

source $DIR_FOR_SRC_SCRIPTS/direnv/hooks.sh

if ! [[ "${PROMPT_COMMAND:-}" =~ _direnv_hook ]]; then
    PROMPT_COMMAND="_direnv_hook${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
fi
