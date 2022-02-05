set termguicolors
set encoding=utf-8
set bg=dark
syntax enable

set number
set wrap "Wrap lines

set hlsearch
set timeoutlen=1000 ttimeoutlen=0 "No delay when swiching mode

" Fix color for alacritty terminal
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set smarttab
set ai "Auto indent
set si "Smart indent

" By default, use spaced tabs.
set expandtab

" Display tabs as 4 spaces wide. When expandtab is set, use 4 spaces.
set shiftwidth=4
set tabstop=4

function TabsOrSpaces()
    " Determines whether to use spaces or tabs on the current buffer.
    if getfsize(bufname("%")) > 256000
        " File is very large, just use the default.
        return
    endif

    let numTabs=len(filter(getbufline(bufname("%"), 1, 250), 'v:val =~ "^\\t"'))
    let numSpaces=len(filter(getbufline(bufname("%"), 1, 250), 'v:val =~ "^ "'))

    if numTabs > numSpaces
        setlocal noexpandtab
    endif
endfunction

" Call the function after opening a buffer
autocmd BufReadPost * call TabsOrSpaces()
