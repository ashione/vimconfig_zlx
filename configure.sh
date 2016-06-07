#!/bin/bash
if [ -d ~/.vim/bundle/Vundle.vim ]; then
        echo 'vunle installed'
else
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! `which ctags` ]; then
        echo 'please install ctags'
fi

cp ./vimrc ~/.vimrc
cp ./vimrc.bundle ~/.vimrc.bundle
