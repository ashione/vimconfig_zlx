" basic configuration{
set ts=4
set nu
set expandtab
set cindent
set autoindent
set encoding=utf-8

syntax enable
syntax on
filetype plugin indent on
filetype on

"colorscheme torte
set background=light
"color evening
set showmatch
set hlsearch
set incsearch
"set list
set textwidth=80
set cursorline
set showmode
noremap j gj
noremap k gk
inoremap jj <ESC>
"}

" bundle setting{
    if filereadable(expand("~/.vimrc.bundle"))
        source ~/.vimrc.bundle
    endif
" }

