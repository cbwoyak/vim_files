#!/bin/bash

vim_dir=~/.vim
vim_bak=~/.vim.bak
vimrc=~/.vimrc
vimrc_bak=~/.vimrc.bak

# if backup of vimrc exists, delete it
if [[ -f $vimrc_bak ]]
then
  rm $vimrc_bak
fi

# backup current vimrc
if [[ -f $vimrc ]]
then
  mv $vimrc $vimrc_bak
fi

# copy new vimrc to ~/.vimrc
cp vimrc $vimrc

# delete old backup of ~/.vim if it exists
if [[ -d $vim_bak ]] && [[ -w $vim_bak ]]
then
  rm -rf $vim_bak
fi

# backup current .vim folder
if [[ -d $vim_dir ]] && [[ -w $vim_dir ]]
then
  mv $vim_dir $vim_bak
fi

# create new ~/.vim folder and copy contents
mkdir $vim_dir
cp -r after $vim_dir/after
cp -r autoload $vim_dir/autoload
vim +PlugInstall +qall
