#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)

{
    git clone https://github.com/VundleVim/Vundle.vim.git \
    ~/.vim/bundle/Vundle.vim
} || {
    echo 'Vundle.vim already cloned - continuing anyways...'
}

cp -f "$SCRIPTS_DIRECTORY/../.vimrc" ~/.vimrc

