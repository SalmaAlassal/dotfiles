" * * * * * * * * * * * Plugins * * * * * * * * * * * 

call plug#begin('~/.config/vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'arcticicestudio/nord-vim'
    Plug 'ycm-core/YouCompleteMe'   
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/nerdtree'
    Plug 'matze/vim-move'
call plug#end()

" * * * * * * * * * YCM * * * * * * 
let g:ycm_global_ycm_extra_conf = '~/.config/vim/.ycm_extra_conf.py'

" Removing the drop-down window when using the autocomplete
set completeopt-=preview

" To disable write-time diagnostics:
let g:ycm_show_diagnostics_ui = 0

" * * * * * * * * * NerdTree * * * * * * 
" Map ^b  to NEERDTreeToggle
nnoremap <C-b> :NERDTreeToggle<CR>
imap <C-b> <ESC>:NERDTreeToggle<CR>

" * * * * * * * * * NerdCommenter * * * * * * 
" Map Ctrl-/ to comment/uncomment
map <C-_> <Plug>NERDCommenterToggle('', 'Toggle')<Cr>

" * * * * * * * * * Vim Move * * * * * * 
" Map HJKL ro move lines/words 
let g:move_key_modifier = 'S'
let g:move_key_modifier_visualmode = 'S'

" * * * * * * * * * Airline * * ** * * 
colorscheme nord

" Always display the status bar
set laststatus=2
set noshowmode
