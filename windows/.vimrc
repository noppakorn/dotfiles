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
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

"fix powershell weird color scheme
set termguicolors
set ff=dos

set number
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'

"" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

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

autocmd InsertEnter,InsertLeave * set cul!
