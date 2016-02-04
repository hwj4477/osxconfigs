"
" .vimrc
"
" by hwj4477@gmail.com
"
" last update : 2015.11.13
"


" settings for vundle (https://github.com/gmarik/vundle)
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

    Plugin 'gmarik/Vundle.vim' "required
    Plugin 'tpope/vim-fugitive' "required
    Plugin 'tpope/vim-sensible' 
    Plugin 'scrooloose/nerdtree'

    Plugin 'vim-ruby/vim-ruby'
    Plugin 'tpope/vim-rails'
    Plugin 'godlygeek/tabular'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'JamshedVesuna/vim-markdown-preview'
    Plugin 'christoomey/vim-system-copy'

call vundle#end()            
filetype plugin indent on " Put your non-Plugin stuff after this line

" ==== settings ====
syntax enable       " syntax highlighting
set nu              " add line numbers
set smartindent     " make smart indent
set expandtab
set nobackup
set history=50
set ruler
set showcmd
set incsearch
set cindent
set ai
set ts=4
set sw=4
set sts=4
set fencs=ucs-bom,utf-8,korea
set termencoding=utf-8

" for pretty color schemes in iTerm2
set t_Co=256
colo elflord

" for running correct rvm ruby (not osx's default ruby) in zsh
set shell=/bin/bash


" ==== autocommands ====
" For ruby
autocmd FileType ruby,eruby,yaml set ai sw=2 ts=2 sts=2 et

