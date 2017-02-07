"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""""""""""""""""""""
" show line numbers
set number

" mouse fun
set mouse=a

" map jj to escape, to avoid reach to escape
imap jj <Esc>

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Default to syntax on
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines"

""""""""""""""""""""""""""""""""""
" OpenShift
"""""""""""""""""

filetype indent on
syntax on
set modeline
autocmd FileType yaml setlocal ai ts=2 sw=2 et
