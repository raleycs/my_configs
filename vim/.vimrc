set nocompatible
set autoindent
set nowrap
set number relativenumber
set nu rnu
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2
set visualbell
syntax on
filetype plugin indent on

" VUNDLE SETUP

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Generic Programming Support 
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='alduin'
call vundle#end()

set backspace=indent,eol,start

" Tab to switch between open buffers
map <Tab> :bn<cr>
map <S-Tab> :bp<cr>
