" basic configuration{
set ts=4
set sts=4
set shiftwidth=4
set nu
set expandtab
set cindent
set autoindent
set encoding=utf-8

syntax enable
syntax on
filetype plugin indent on
filetype on

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

"  UI setting  {
   set background=dark
   if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
       let g:solarized_termcolors=256
       let g:solarized_termtrans=1
       let g:solarized_contrast="normal"
       let g:solarized_visibility="normal"
       color solarized
   endif
   if &term == 'xterm' || &term == 'screen' 
       set t_Co=256
   endif

" }

" keys-binding {
nmap <c-F5> :!g++ % -o out -std=c++11 && ./out<CR>
" }
