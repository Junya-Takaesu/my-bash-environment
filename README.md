# My Bash Enviornment

My bash scripts won't work until `Tools I Use` installed on the system.

So, here is the steps to use this repository to set up bash environment.

1. Clone this repository to somewhere under $HOME directory.
1. Install the softwares/tools listed under the section of `Tools I Use` using whatever the methods requried to install each one.
1. Source the `.mybashrc` in the .bashrc file in the $HOME directory.

Example of sourcing the `.mybashrc`:

```bash
# My custom bashrc.
# Commands to load is written this file.
# So, this is the place where every setups happen.
if [ -f ~/.scripts/.mybashrc ]; then
    . ~/.scripts/.mybashrc
fi
```

So, basically .mybashrc has to be edited to configure things like sourcing cli programs.

## Tools I Use

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
- aws cli

## Customize things unique to the machine

.custom-env is empty folder and files inside are git-ignored.
Any scripts or configurations that are unique to the machine should be saved here.
