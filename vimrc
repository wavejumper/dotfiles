"pathogen
execute pathogen#infect()
:call pathogen#helptags()
filetype plugin on
filetype indent on
set nocompatible

let g:airline#extensions#tabline#enabled = 1

"remembering shit
set history=1000
set viminfo='100,f1

set re=1

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
set background=dark
colors solarized

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

"keys
map ,r :call RangerChooser()<CR>
map ,t :CommandTBuffer<CR>
map <C-n> :bn <Enter>
map <C-b> :bp <Enter>
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
set backspace=indent,eol,start
set pastetoggle=<F2>
set expandtab

"Titlebar
let &titlestring = "vim ".expand("%:p")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif
