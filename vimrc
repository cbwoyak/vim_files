"List plugins, install with PlugInstall
call plug#begin('~/.vim/plugins')

"dart language plugin
Plug 'dart-lang/dart-vim-plugin'

" color scheme
Plug 'nightsense/stellarized'
call plug#end()

"tabs
set tabstop=2
set shiftwidth=2
set expandtab

" syntax highlighting
syntax on

filetype plugin indent on
set nu

"only set colorscheme if it is installed
if isdirectory($HOME . '/.vim/plugins/stellarized')
  set background=dark
  colorscheme stellarized
endif
