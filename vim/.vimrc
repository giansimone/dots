" giansimone's ~/.vimrc
" 2025 Giansimone Perrino

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible    " Tell `vim` to not behave like the ancient `vi` editor
syntax on           " Highlight syntax
filetype on         " Detect file type
filetype indent on
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set softtabstop=4   " Treat 4 spaces as a tab for backspace
set shiftwidth=4    " Indent width for >> and <<
set expandtab       " Use spaces instead of tabs

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Rules
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch       " Highlight search matches while typing
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless an uppercase letter is used
set ruler           " Show cursor position in bottom right
set showmode        " Show mode (INSERT, VISUAL) at bottom
set autoindent      " New lines inherit indentation
set backspace=2     " Allow backspacing over everything

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2                       " Always show the status line

hi User1 ctermfg=white ctermbg=black
hi User2 ctermfg=red ctermbg=black
hi User3 ctermfg=darkcyan ctermbg=black
hi User4 ctermfg=darkyellow ctermbg=black
hi User5 ctermfg=grey ctermbg=black

set statusline=
set statusline+=%3*\ %n\ %*            " Buffer number
set statusline+=%4*%{&ff}%*            " File format
set statusline+=%2*%y%*                " File type
set statusline+=%1*\ %<%F%*            " Full path with truncation point
set statusline+=%2*%m%r%h%*            " Modified + ReadOnly + Help flags
set statusline+=%1*%=%5l%*             " Current line
set statusline+=%5*/%L%*               " Total lines
set statusline+=%1*%4v\ %*             " Virtual column
set statusline+=%4*0x%04B\ %*          " Hex character under the cursor
