" * * * CPP * * *

" Compile
autocmd FileType cpp map <buffer>  <F5> :w       <bar> !clear; g++ -std=c++17 % -Wall -g -o %.out<CR>
autocmd FileType cpp imap <buffer> <F5> <esc> :w <bar> !clear; g++ -std=c++17 % -Wall -g -o %.out<CR>

" Compile & Run
autocmd FileType cpp map  <buffer> <F9> :w      <bar> !clear; g++ -std=c++17 % -Wall -g -o %.out && ./%.out<CR>
autocmd FileType cpp imap <buffer> <F9> <esc>:w <bar>!clear; g++ -std=c++17 % -Wall -g -o %.out && ./%.out<CR>


" * * * C * * *
autocmd FileType c map  <buffer> <F9> :w      <bar> !clear; gcc % -Wall  -o %.out && ./%.out<CR>
autocmd FileType c imap <buffer> <F9> <esc>:w <bar> !clear; gcc % -Wall  -o %.out && ./%.out<CR>


" * * * Python * * *
autocmd FileType python map  <buffer> <F9> :w      <bar> !clear; python3 % <CR>
autocmd FileType python imap <buffer> <F9> <esc>:w <bar> !clear; python3 % <CR>


" * * * Java * * *
autocmd filetype java map  <buffer> <F9> :w <bar> !clear; java % <CR>
autocmd filetype java imap <buffer> <F9> <esc> :w <bar> !clear; java % <CR>


" * * * Vim templates * * *

"Auto load default templates while creating new files
augroup templates
    autocmd!
    autocmd BufNewFile *.cpp   0r ~/.config/vim/skeletons/skeleton.cpp
    autocmd BufNewFile *.c     0r ~/.config/vim/skeletons/skeleton.c
    autocmd BufNewFile *.sh    0r ~/.config/vim/skeletons/skeleton.sh
    autocmd BufNewFile *.java  0r ~/.config/vim/skeletons/skeleton.java
    autocmd BufNewFile *.html  0r ~/.config/vim/skeletons/skeleton.html
augroup END


" * * * Abbreviations for faster coding * * *
augroup abbrcmds
    autocmd!
    "short hands for cpp
    autocmd FileType cpp :iabbrev iff if ()<left>
    autocmd FileType cpp :iabbrev elf else if ()<left>
    autocmd FileType cpp :iabbrev elsee else ()<left>
    autocmd FileType cpp :iabbrev forr for (int i = 0; i < n; i++)
    
    "short hands for shell
    autocmd FileType sh :iabbrev iff if []<left>
    autocmd FileType sh :iabbrev elf elseif []<left>
augroup END


" * * * Auto comments * * *
"augroup commentcmds
"    autocmd!
"    "<C-_> --> Ctrl + /
"    autocmd FileType sh,python     nnoremap <buffer> <C-_> I#<esc>
"    autocmd FileType c,cpp,java    nnoremap <buffer> <C-_> I//<esc>
"    autocmd FileType c             nnoremap <buffer> <C-_> I//<esc>
"    autocmd FileType vim           nnoremap <buffer> <C-_> I"<esc>
"augroup END


" * * * Coding style and formatting * * *
"augroup operatorcmds
"    autocmd!
"
"    " NO space after unary operators
"    autocmd FileType cpp   inoremap  ++ ++
"    autocmd FileType cpp   inoremap  -- --
"
"    " Use one space after a comment
"    autocmd FileType cpp   inoremap  // //<Space>
"
"    " Use one space around (on each side of) most binary operators
"    autocmd FileType cpp   inoremap  + <Space>+<Space>
"    autocmd FileType cpp   inoremap  - <Space>-<Space>
"    autocmd FileType cpp   inoremap  * <Space>*<Space>
"    autocmd FileType cpp   inoremap  / <Space>/<Space>
"    autocmd FileType cpp   inoremap  % <Space>%<Space>
"    
"    autocmd FileType cpp   inoremap  =  <Space>=<Space>
"    autocmd FileType cpp   inoremap  == <Space>==<Space>
"    autocmd FileType cpp   inoremap  != <Space>!=<Space>
"
"    autocmd FileType cpp   inoremap  += <Space>+=<Space>
"    autocmd FileType cpp   inoremap  -= <Space>-=<Space>
"    autocmd FileType cpp   inoremap  *= <Space>*=<Space>
"    autocmd FileType cpp   inoremap  /= <Space>/=<Space>
"    
"    autocmd FileType cpp   inoremap  <  <Space><<Space>
"    autocmd FileType cpp   inoremap  >  <Space>><Space>
"    autocmd FileType cpp   inoremap  <= <Space><=<Space>
"    autocmd FileType cpp   inoremap  >= <Space>>=<Space>
"
"    autocmd FileType cpp   inoremap  <<  <Space><<<Space>
"    autocmd FileType cpp   inoremap  >>  <Space>>><Space>
"
"    autocmd FileType cpp   inoremap  && <Space>&&<Space>
"    autocmd FileType cpp   inoremap  \|\| <Space>\|\|<Space> 
"
"augroup END
