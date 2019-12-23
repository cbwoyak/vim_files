"List plugins, install with PlugInstall
call plug#begin('~/.vim/plugins')

"dart language plugin
Plug 'dart-lang/dart-vim-plugin'

" color scheme
Plug 'nightsense/stellarized'
call plug#end()

"Default tab settings
set softtabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on

" syntax highlighting
syntax on

" limit lines to 80 characters
set textwidth=80

"enable line numbers and curser location
set nu
set ru

"only set colorscheme if it is installed
if isdirectory($HOME . '/.vim/plugins/stellarized')
  set background=dark
  colorscheme stellarized
endif
