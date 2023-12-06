set encoding=utf-8
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
set clipboard=unnamed

" VIM-PLUG SETUP
call plug#begin()

" Prettify VIM
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'

" File tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
nnoremap <C-g> :NERDTreeToggle<CR>

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='minimalist'

" General programming support
Plug 'ycm-core/YouCompleteMe'
Plug 'dense-analysis/ale'

" Utility
Plug 'tomtom/tcomment_vim'

" Python support (PEP 8)
" pip3 install pylint
Plug 'nvie/vim-flake8'
let python_hightlight_all=1

" Typescript support
Plug 'leafgarland/typescript-vim'

call plug#end()

set backspace=indent,eol,start

" Tab to switch between open buffers
map <Tab> :bn<cr>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
