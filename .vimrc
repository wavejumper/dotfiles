"pathogen
execute pathogen#infect()
:call pathogen#helptags()
filetype plugin on
filetype indent on
set nocompatible

"powerline
set rtp+=~/.local/lib/python3.3/site-packages/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

"remembering shit
set history=1000
set viminfo='100,f1

"searching
set incsearch 
set hlsearch 
set ignorecase

"indent
set autoindent
set smartindent

"tabz
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"word wrap without line breaks
set nowrap
set linebreak
set nolist

"ui
set encoding=utf-8
set laststatus=2 "always show the status line
set gcr=a:blinkon0
syntax on
set number
set t_Co=256
colors zenburn

"backup
set backupdir-=.
set backupdir^=~/.swp

"ranger plugin
fun! RangerChooser()
    exec "silent !ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
    if filereadable('/tmp/chosenfile')
        exec 'edit ' . system('cat /tmp/chosenfile')
        call system('rm /tmp/chosenfile')
    endif
    redraw!
endfun

"mappings
map ,r :call RangerChooser()<CR>
set pastetoggle=<F2>
map ,t :CommandTBuffer<CR>
set backspace=indent,eol,start
