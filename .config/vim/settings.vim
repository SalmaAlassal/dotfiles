set title
"set cursorline

" set UTF-8 encoding
set encoding=utf-8

" Enable search highlighting
set hlsearch

" Turn syntax highlighting on
syntax on

" highlight matching braces
"set showmatch

" Automatically read file after it's been modified elsewhere 
set autoread   

" Disables audible sounds for errors
set noerrorbells visualbell t_vb=

" Move cursor an extra space after the end of a line
set virtualedit+=onemore

" Show hybrid line numbers &  mark the current line number
set relativenumber
set number

" number of spaces in tab
set tabstop=4

" when indenting, use 4 spaces width
set shiftwidth=4

" use spaces instead of tabs
set expandtab

" Make the new lines inherit the indentation of previous lines
set autoindent
set cindent

" Avoid wrapping a line in the middle of a word
set linebreak

" Enable mouse scrolling
"set mouse=a

" Use system clipbaord 
" this requires that the version of Vim was compiled with clipboard support
"set clipboard=unnamedplus 
