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

" Identify platform {
    silent function! OSX()
        return has('macunix')
    endfunction
    silent function! LINUX()
        return has('unix') && !has('macunix') && !has('win32unix')
    endfunction
    silent function! WINDOWS()
        return  (has('win32') || has('win64'))
    endfunction

" }

" keys-binding {
"nmap <c-F5> :!g++ % -o out -std=c++11 && ./out<CR>
nmap <c-F5> :call CompileFile()<CR>

func! CompileFile()
    if &filetype == 'cpp'
        exec "!g++ % -o out -std=c++11 && ./out && rm ./out"
    elseif &filetype =='c'
        exec "!gcc % -o out && ./out && rm ./out"
    elseif &filetype == 'python'
        exec "!python %"
    elseif &filetype == "sh"
        exec "!sh %"
    endif
endfunc

nmap <C-F10> :call UpdateCtags()<CR><CR>
nmap <silent> <F10> :call GenerateCtags()<CR><CR>

function! GenerateCtags()
    !ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
endfunction

function! UpdateCtags()
    let curdir=getcwd()
    while !filereadable("./tags")
        cd ..
        if getcwd() == "/"
            break
        endif
    endwhile
    if filewritable("./tags")
        !ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
        TlistUpdate
    endif
    execute ":cd " . curdir
endfunction

" }

" self-specific {
iabbr cppheader #include <iostream>
            \<CR>#include <string>
            \<CR>#include <vector>
            \<CR>#include <queue>
            \<CR>#include <statck>
            \<CR>#include <map>
            \<CR>#include <list>
            \<CR>#include <cstdio>
            \<CR>#include <cstdlib>
            \<CR>#include <cstring>
            \<CR>using namspace std<CR>

iabbr cppcmt <CR>/** 
\<CR>******************************************************************************
\<CR>@FunctionName
\<CR>
\<CR>@inputs
\<CR>
\<CR>@outputs
\<CR>
\<CR>Side effects
\<CR>
\<CR>******************************************************************************
\<CR>/<CR>


" }
