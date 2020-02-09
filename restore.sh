#!/bin/bash

vim_dir=~/.vim
vim_bak=~/.vim.bak
vimrc=~/.vimrc
vimrc_bak=~/.vimrc.bak

# restore vimrc from backup, if it exists
if [[ -f $vimrc_bak ]]
then
  cp $vimrc_bak $vimrc
fi

# restore .vim directory from backup, if it exists
if [[ -d $vim_bak ]]
then
  rm -rf $vim_dir
  mv $vim_bak $vim_dir
fi
