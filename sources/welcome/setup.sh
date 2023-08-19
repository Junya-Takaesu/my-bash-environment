# "figlet" command shows a message like below when you login to the terminal.

#                     ___       ___
#                    /\__\     |\__\
#                   /::|  |    |:|  |
#                  /:|:|  |    |:|  |
#                 /:/|:|__|__  |:|__|__
#                /:/ |::::\__\ /::::\__\
#                \/__/~~/:/  //:/~~/~
#                      /:/  //:/  /
#                     /:/  / \/__/
#                    /:/  /
#                    \/__/
#      ___          ___          ___          ___
#     /\  \        /\  \        /\  \        /\__\
#    /::\  \      /::\  \      /::\  \      /:/  /
#   /:/\:\  \    /:/\:\  \    /:/\ \  \    /:/__/
#  /::\~\:\__\  /::\~\:\  \  _\:\~\ \  \  /::\  \ ___
# /:/\:\ \:|__|/:/\:\ \:\__\/\ \:\ \ \__\/:/\:\  /\__\
# \:\~\:\/:/  /\/__\:\/:/  /\:\ \:\ \/__/\/__\:\/:/  /
#  \:\ \::/  /      \::/  /  \:\ \:\__\       \::/  /
#   \:\/:/  /       /:/  /    \:\/:/  /       /:/  /
#    \::/__/       /:/  /      \::/  /       /:/  /
#     ~~           \/__/        \/__/        \/__/
#             ___          ___         ___
#            /\  \        /\__\       /\__\
#           /::\  \      /::|  |     /:/  /
#          /:/\:\  \    /:|:|  |    /:/  /
#         /::\~\:\  \  /:/|:|  |__ /:/__/  ___
#        /:/\:\ \:\__\/:/ |:| /\__\|:|  | /\__\
#        \:\~\:\ \/__/\/__|:|/:/  /|:|  |/:/  /
#         \:\ \:\__\      |:/:/  / |:|__/:/  /
#          \:\ \/__/      |::/  /   \::::/__/
#           \:\__\        /:/  /     ~~~~
#            \/__/        \/__/

WELCOME_DIRECTORY=$DIR_FOR_SRC_SCRIPTS/welcome

display_welcome_msg() {
    ACCUMULATED_OUTPUT+=$(figlet -d $WELCOME_DIRECTORY/figlet-fonts/ -f isometric1 -kc "MY
BASH
ENV
")

    highlighted_start_yellow='\033[7m\033[1;33m'
    highlighted_end='\033[0m'

    ACCUMULATED_OUTPUT+=("Welcome $USER...\n")

    # Location of my-bash-env
    ACCUMULATED_OUTPUT+=("\t${highlighted_start_yellow} My Bash Environment's location on this machine ${highlighted_end}")
    ACCUMULATED_OUTPUT+=("\t\t$DIR_FOR_SRC_SCRIPTS")
    ACCUMULATED_OUTPUT+=("\n")

    # System info
    ACCUMULATED_OUTPUT+=("\t${highlighted_start_yellow} System Information ${highlighted_end}")
    ACCUMULATED_OUTPUT+=("\t\t$(uname -a)")
    ACCUMULATED_OUTPUT+=("\n")

    # Repo URL
    ACCUMULATED_OUTPUT+=("\t${highlighted_start_yellow} View this repository on GitHub ${highlighted_end}")
    ACCUMULATED_OUTPUT+=("\t\thttps://github.com/Junya-Takaesu/my-bash-environment")
    ACCUMULATED_OUTPUT+=("\n")
}

[ -x "$(command -v figlet)" ] && display_welcome_msg
