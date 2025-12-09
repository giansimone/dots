" giansimone's .config/nvim/init.vim
" 2025 Giansimone Perrino

" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox

" Basics
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Search Rules
set incsearch
set ignorecase
set smartcase

set ruler
set showmode

set clipboard=unnamedplus
