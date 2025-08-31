# Enable duplicate tabs/panes by telling the bash the current wslpath in Windows path format
# Details:
#   https://learn.microsoft.com/en-us/windows/terminal/tutorials/new-tab-same-directory
# PROMPT_COMMAND=${PROMPT_COMMAND:+"$PROMPT_COMMAND; "}'printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"'
