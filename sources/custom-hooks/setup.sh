# Enable nullglob option to fix error of no such file or directory(because initially there is no file in the directory)
shopt -s nullglob

for file in "$DIR_FOR_SRC_SCRIPTS/custom-hooks/.hooks/"*.sh; do
    source $file
done

# Disable nullglob option as it is disabled by default
shopt -u nullglob
