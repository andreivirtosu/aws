set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"Bundle 'msanders/snipmate.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
"Bundle 'vim-scripts/phpfolding'

filetype plugin indent on     " required!

syntax on
set t_Co=256
colorscheme desert

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p   " move cursor 

set expandtab
set tabstop=4
set smartindent
set shiftwidth=4

