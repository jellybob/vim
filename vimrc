set nocompatible
filetype off

" Run Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'elzr/vim-json'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'mxw/vim-jsx'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()

" Vundle is done. Carry on.
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set laststatus=2
set expandtab

" Allow changing buffers without saving
set hidden

" Bash style tab completion
set wildmode=longest,list

set mouse=a
set number
highlight clear SignColumn

let mapleader=","
map <Leader>p :CtrlP<CR>
map <Leader>r :!ruby %<CR>
map <Leader>s :!rspec %<CR>
let g:ctrlp_user_command = [ '.git', 'cd %s && git ls-files . -co --exclude-standard' ]

" Map jk to Esc for super fast escaping
inoremap jk <Esc>
