#!/bin/bash

vim_dir=~/.vim
vim_bak=~/.vim.bak

cp vimrc ~/.vimrc
if [ -d $vim_bak ] && [ -w $vim_bak ]
then
  rm -rf $vim_bak
fi

if [ -d $vim_dir ] && [ -w $vim_dir ]
then
  mv $vim_dir $vim_bak
fi
mkdir $vim_dir
cp -r autoload $vim_dir/autoload
vim +PlugInstall +qall
