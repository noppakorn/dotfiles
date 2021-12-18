set encoding=utf-8
set bg=dark
syntax enable

set termguicolors

set noshowmode

set number
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent

set wrap "Wrap lines

set cursorline
set hlsearch
set list

" Fix color for alacritty terminal
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
