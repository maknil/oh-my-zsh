#!/usr/bin/env zsh

#####
#### my helpers
#####

export PATH=~/pismute/makbin/progit:$PATH

if [ -d ~/bin ]; then
  export PATH=~/bin:$PATH
fi

if [ -d ~/dogfeet/dogfeet.sample/helper ]; then
  export PATH=~/dogfeet/dogfeet.sample/helper:$PATH
fi

## nvm

nvm use default

#####
#### zsh customizations
#####

## off zsh correction
unsetopt correct_all

## zsh completions
fpath=($fpath $ZSH/zsh-completions/src)

rm -f ~/.zcompdump; compinit

