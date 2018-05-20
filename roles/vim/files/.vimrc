" Run as iMproved
set nocompatible

" Required for Vundle
filetype off

" Include Vundle in runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself (required)
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on

" More natural split behavior
set splitbelow
set splitright

" Use spaces for indentation
set tabstop=4
set shiftwidth=4

" Insert spaces when pressing <TAB>
set expandtab
