#!/usr/bin/env zsh

#### default path

export PATH=$ZSH_CUSTOM/bin:$PATH

if [ -d ~/bin ]; then
  export PATH=~/bin:$PATH
fi

#####
#### zsh customizations
#####

## off zsh correction
unsetopt correct_all

## add zsh completions
fpath=($fpath $ZSH_CUSTOM/zsh-completions/src)

rm -f ~/.zcompdump; compinit

###
## nvm
nvm use default


