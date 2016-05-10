let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=1  
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Enable_Dold_Column=1  
let Tlist_File_Fold_Auto_Close=1  
let Tlist_Show_One_File=1  
let Tlist_Use_Left_Window=1  
let Tlist_Use_SingleClick=1  
nnoremap <silent> <F8> :TlistToggle<CR>

filetype plugin on  
autocmd FileType python set omnifunc=pythoncomplete#Complete  
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete  
   
   
let g:pydiction_location='~/.vim/pydiction/complete-dict'  
set nofoldenable 
set tabstop=4  
set shiftwidth=4  
set expandtab  
set number
set cindent 
set autoindent
execute pathogen#infect()
"设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese

"语言设置
set langmenu=zh_CN.UTF-8

"设置语法高亮
syntax enable
syntax on
set nu
"设置配色方案
colorscheme torte

"设置颜色
color evening

"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"高亮显示匹配的括号
set showmatch

"去掉vi一致性
set nocompatible

inoremap jj <ESC>

"设置java 自动补全

filetype plugin on
filetype indent on

"setlocal omnifunc=javacomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
"autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

"vundle 设置
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle,required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'a.vim'
Bundle 'Mark'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'Junevimer/c.vim'
Bundle 'UltiSnips'
Bundle 'Tagbar'
Bundle 'Tabular'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'plasticboy/vim-markdown'
Bundle 'kien/ctrlp.vim'
Bundle 'ack.vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on     " required!
"定义快速寻找快捷键
""""""""""YouCompleteMe""""""""
nmap <leader>gd :YcmDiags<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'                                   " 编译错误标识符
let g:ycm_warning_symbol = '>*'                                 " 编译警告标识符
let g:ycm_confirm_extra_conf=0                                  " 关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1                 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2                     " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0                                      " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1                        " 语法关键字补全
let g:ycm_complete_in_comments = 1                              " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                               " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0     " 注释和字符串中的文字也会被收入补全
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
set completeopt=longest,menu                                    " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif         " 离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    " 回车即选中当前项

" YCM 补全菜单配色
highlight Pmenu ctermfg=2 ctermbg=3 guifg=SeaGreen guibg=darkgreen    " 菜单
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=SeaGreen guibg=darkgreen " Select
