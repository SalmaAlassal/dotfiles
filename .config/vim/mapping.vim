" Disable the arrow buttons
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

"inoremap <up>    <Esc>
"inoremap <down>  <Esc>
"inoremap <left>  <Esc>
"inoremap <right> <Esc>


" Map `jj` to Escape to go back to normal mode
imap jj <Esc>


" Map j and k to gj/gk  to treat long lines as break lines 
nnoremap j gj
nnoremap k gk
"nnoremap <down> gj
"nnoremap <up> gk


" Use 'F2' to save a file
nmap <F2> :w<CR> " Normal mode
imap <F2> <ESC>:w<CR>i " Insert mode : exit insert --> save --> enters insert again


" Allow to go to the next line using the right/left arrow, h and l keys 
set whichwrap+=<,>,h,l,[,]

" Remapping end of line key
inoremap <C-A> <Home>
inoremap <C-E> <End>

" Make it have one more character after the end of line
nnoremap $ $l

" Auto Brackets  & quotes                           
"inoremap { {}<Esc>ha
"inoremap ( ()<Esc>ha
"inoremap [ []<Esc>ha
""inoremap " ""<Esc>ha
"inoremap ' ''<Esc>ha
"inoremap ` ``<Esc>ha
