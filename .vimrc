" Install vim plug-in manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


set autoindent
set expandtab

set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

set hlsearch

set ruler
set wildmenu
set number
set relativenumber
set noerrorbells
set visualbell
set title

set foldmethod=indent
set nofoldenable

set showmode
set showcmd


set history=1000

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" Enable NERDTree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Eneable lightline
set laststatus=2

" Set Vim_rainbow to be active gloablly
let g:rainbow_active = 1
