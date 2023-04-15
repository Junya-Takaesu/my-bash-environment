[[ -d "/run/WSL" ]] && alias start="explorer.exe"
[[ -d "/run/WSL" ]] && . $DIR_NAME_MY_BASH_ENV/windows/wsl2/setup.sh
[[ -d "/run/WSL" ]] && export PATH="$PATH:/mnt/c/Users/ryoku/AppData/Roaming/Code/User/globalStorage/ms-vscode-remote.remote-containers/cli-bin"
