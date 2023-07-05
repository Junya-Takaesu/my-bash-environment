# Enable starship prompt 2022-10-29
[ -x "$(command -v starship)" ] && eval "$(starship init bash)"
# https://starship.rs/config
[ -x "$(command -v starship)" ] && export STARSHIP_CONFIG=$DIR_FOR_SRC_SCRIPTS/starship/starship.toml
