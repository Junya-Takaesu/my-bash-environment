# figlet command somethink like below when you login to the terminal

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

WELCOME_DIRECTORY=$DIR_NAME_MY_BASH_ENV/welcome

display_welcome_msg() {
    figlet -d $WELCOME_DIRECTORY/figlet-fonts/ -f isometric1 -kctn "my
BASH
ENV
"

    yellow_highlighted='\033[7m\033[1;33m'
    end_highlighted='\033[0m'

    echo -e "Welcome $USER...\n"
    echo -e "\t${yellow_highlighted} My Bash Environment's location on this machine ${end_highlighted}"
    echo -e "\t\t$DIR_NAME_MY_BASH_ENV"
    echo -e "\n"
    echo -e "\t${yellow_highlighted} View this repository on GitHub ${end_highlighted}"
    echo -e "\t\thttps://github.com/Junya-Takaesu/my-bash-environment"
    echo -e "\n"
}

[ -x "$(command -v figlet)" ] && display_welcome_msg
