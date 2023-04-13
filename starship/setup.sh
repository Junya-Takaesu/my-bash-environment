# Enable starship prompt 2022-10-29
[ -x "$(command -v starship)" ] && eval "$(starship init bash)"
# https://starship.rs/config
[ -x "$(command -v starship)" ] && export STARSHIP_CONFIG=$DIR_NAME_MY_BASH_ENV/starship/starship.toml
