" Enable pathogen.vim
execute pathogen#infect()

" Basic filetype-specific behavior
syntax on
filetype plugin indent on

" More natural split behavior
set splitbelow
set splitright

" Use spaces for indentation
set tabstop=4
set shiftwidth=4

" Insert spaces when pressing <TAB>
set expandtab
