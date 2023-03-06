# My Bash Enviornment

My bash scripts won't work until these softwares/tools installed on the system.

So, here is the steps to use this repository to set up bash environment.

1. Clone this repository to somewhere under $HOME directory.
1. Install the softwares/tools listed below using whatever the methods requried to install each one.
1. Source the `.mybashrc` in the .bashrc file in the $HOME directory.

Example of sourcing the `.mybashrc`: 
```bash
# My custom bashrc.
# Commands to load is written this file.
if [ -f ~/.scripts/.mybashrc ]; then
    . ~/.scripts/.mybashrc
fi
```


## Tools
- exa
    - list in pretty format
- nvm
    - node version manager
- peco
    - filtering tool. powerful when used with history command. incrementaly search command in command history.
- rbenv
    - ruby version manager
- github command
    - interact with github services.
- starship
    - simple yet elegant pretty command prompt
- cargo
    - rust package manager