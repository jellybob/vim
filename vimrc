set nocompatible
filetype off

" Run Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'elzr/vim-json'
Plugin 'elixir-lang/vim-elixir'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'othree/yajs.vim' " Javascript highlighting
Plugin 'othree/eregex.vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()

" Vundle is done. Carry on.
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set laststatus=2
set expandtab
set smartindent

" Allow changing buffers without saving
set hidden

" Bash style tab completion
set wildmode=longest,list

" Use a posix compliant shell internally as plugins
" expect one.
set shell=bash

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
