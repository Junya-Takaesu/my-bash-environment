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
    ACCUMULATED_OUTPUT+=$(figlet -d $WELCOME_DIRECTORY/figlet-fonts/ -f isometric1 -kctn "
MY
BASH
ENV
")

    yellow_highlighted='\033[7m\033[1;33m'
    end_highlighted='\033[0m'

    ACCUMULATED_OUTPUT+=("Welcome $USER...\n")
    ACCUMULATED_OUTPUT+=("\t${yellow_highlighted} My Bash Environment's location on this machine ${end_highlighted}")
    ACCUMULATED_OUTPUT+=("\t\t$DIR_FOR_SRC_SCRIPTS")
    ACCUMULATED_OUTPUT+=("\n")
    ACCUMULATED_OUTPUT+=("\t${yellow_highlighted} View this repository on GitHub ${end_highlighted}")
    ACCUMULATED_OUTPUT+=("\t\thttps://github.com/Junya-Takaesu/my-bash-environment")
    ACCUMULATED_OUTPUT+=("\n")
}

[ -x "$(command -v figlet)" ] && display_welcome_msg
