# My Bash Environment

## How to use

1. Just clone this repository under $HOME direcotry.
1. Source the custom .bashrc called ".mybashrc" as illustrated undert the header "How to "source" My Bash Environment."
1. Customize it by modifying this repository.
   - Each directory is grouped by a command/program/tool/category.
   - Make new directories to extend functionality as you go.

## How to "source" My Bash Environment

```bash
# My custom bashrc.
# Scripts to be loaded are written this file.
if [ -f ~/my-bash-environment/.mybashrc ]; then
    . ~/my-bash-environment/.mybashrc
fi
```
