"autocmd vimenter * ++nested colorscheme gruvbox
call plug#begin('~/.config/nvim/plugged')
" Insert here your plugins
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'morhetz/gruvbox'
 Plug 'tpope/vim-fugitive'
 Plug 'preservim/nerdtree'
 Plug 'wincent/terminus'
 Plug 'sheerun/vim-polyglot'
 "Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'sainnhe/sonokai'
 Plug 'tpope/vim-sleuth'
 Plug 'chrisbra/Colorizer'
call plug#end()

let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai
set encoding=utf-8
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
syntax enable

set termguicolors

let g:airline_powerline_fonts = 1
"let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_theme='sonokai'
set noshowmode

set number
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent

set lbr
set tw=500
set wrap "Wrap lines

set cursorline
set hlsearch
set list

" Compile current file with appropriate compiler
autocmd vimEnter *.c map <F5> :w <CR> :!clear ; gcc %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>
autocmd vimEnter *.cpp map <F5> :w <CR> :!clear ; g++ --std=c++11 -Wall -Wshadow %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>
autocmd vimEnter *.rs map <F5> :w <CR> :!clear ; rustc %; if [ -f %:r ]; then time ./%:r; rm ./%:r; fi <CR>
autocmd vimEnter *.py map <F5> :w <CR> :!clear ; time python %; <CR>

" Fix color for alacritty terminal
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
