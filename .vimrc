syntax on
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set ruler
set hlsearch
set ignorecase
set undofile
set noerrorbells
set history=1000
set encoding=utf-8

inoremap { {<CR>}<ESC>O


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

colorscheme snazzy
