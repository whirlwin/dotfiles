set cc=121
set et
set list
set lcs=tab:>-
set lcs=trail:.
set nu
set sts=2

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'

call vundle#end()
syntax enable
filetype plugin indent on

