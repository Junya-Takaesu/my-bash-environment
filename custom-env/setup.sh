# Enable nullglob option to fix glob related errors
shopt -s nullglob
for file in "$DIR_NAME_MY_BASH_ENV/.custom-env/"*.sh; do
    . $file
done
# Disable nullglob option as it is disabled by default
shopt -u nullglob
