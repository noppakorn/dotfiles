call plug#begin('~/.vim/plugged')
" Insert here your plugins
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'morhetz/gruvbox'
 Plug 'tpope/vim-fugitive'
 Plug 'preservim/nerdtree'
 Plug 'wincent/terminus'
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-dispatch'
 "Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set bg=dark
let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox

set termguicolors

set number
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'

"" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


set expandtab

" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Compile current file with appropriate compiler
autocmd vimEnter *.cpp map <F8> :w <CR> :!clear ; g++ --std=c++11 %; if [ -f a.out ]; time ./a.out; rm a.out; end <CR>
autocmd vimEnter *.rs map <F8> :w <CR> :!clear ; rustc %; if [ -f %:r ]; time ./%:r; rm ./%:r; end <CR>
autocmd vimEnter *.py map <F8> :w <CR> :!clear ; time python %; <CR>
