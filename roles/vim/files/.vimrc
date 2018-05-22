" Run as iMproved
set nocompatible

" Required for Vundle
filetype off

" Include Vundle in runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself (required)
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on

" More natural split behavior
set splitbelow
set splitright

" Split navigation with Ctrl + movement key
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Use spaces for indentation
set tabstop=4
set shiftwidth=4

" Insert spaces when pressing <TAB>
set expandtab

" Show line numbers by default
set number

" Open NERDTree if vim was started opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Search hidden files with ctrlp
let g:ctrlp_show_hidden = 1

" YouCompleteMe Options
let g:ycm_autoclose_preview_window_after_insertion = 1

" Prompt to autocreate missing directories.
" Useful for :open does/not/exist/file.txt and then saving.
augroup vimrc-auto-mkdir
    autocmd!
    autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
    function! s:auto_mkdir(dir, force)
        if !isdirectory(a:dir)
                    \   && (a:force
                    \       || input("'" . a:dir . "' does not exist. Create? [y/N]") =~? '^y\%[es]$')
            call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
        endif
    endfunction
augroup END
