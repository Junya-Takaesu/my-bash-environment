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
    echo -e "Welcome $USER...\n"
    echo -e "\e[4m\e[37;44m\"My Bash Environment\"'s location on this machine:\e[0m $DIR_NAME_MY_BASH_ENV"
    echo -e "\e[4m\e[37;44mView this repository on GitHub:\e[0m https://github.com/Junya-Takaesu/my-bash-environment"
}

[ -x "$(command -v figlet)" ] && display_welcome_msg
