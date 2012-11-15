#!/usr/bin/env zsh

if [ ! -L ~/.vimrc ]; then
  if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak;
  fi;

  ln -s $ZSH/custom/.vimrc ~/.vimrc
fi;

