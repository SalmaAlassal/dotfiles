set clipboard=unnamedplus
" Incrementally search while typing
set incsearch
" Use smart case for searching
set ignorecase
set smartcase
" Highlight searches
set hlsearch

" -----------------------------------------------------------
" -- Map leader key
" -----------------------------------------------------------
let mapleader = '<Space>'

" -----------------------------------------------------------
" -- Map j and k to gj/gk  to treat long lines as break lines
" -----------------------------------------------------------
"  Didn't work
" nnoremap j gj
" nnoremap k gk

" -----------------------------------------------------------
" -- Map ggVG to space+a
" -----------------------------------------------------------
nnoremap <space>a ggVG

" -----------------------------------------------------------
" -- Map Space + o/O to insert a new line
" -----------------------------------------------------------
nnoremap <space>o o<Esc>
nnoremap <space>O O<Esc>

" -----------------------------------------------------------
" -- Map the nohlsearch command to space + h
" -----------------------------------------------------------
nnoremap <space>h :nohlsearch<CR>

" -----------------------------------------------------------
" -- Scroll down and up using <Space> + j/k
" -----------------------------------------------------------
noremap <Space>j <C-d>
noremap <Space>k <C-u>

" -----------------------------------------------------------
" -- Surround text with double asterisks using Leader+ b
" -----------------------------------------------------------
vnoremap <space>b s**<C-r>"**<Esc> 
" -----------------------------------------------------------
" VSCode key mappings
" -----------------------------------------------------------
nmap <silent> gd :call VSCodeCall('editor.action.peekDefinition')<CR>
nmap <silent> gD :call VSCodeCall('editor.action.revealDefinition')<CR>
nmap <silent> gr :call VSCodeCall('editor.action.referenceSearch.trigger')<CR>
nmap <silent> gR :call VSCodeCall('references-view.findReferences')<CR>
nmap <silent> gy :call VSCodeCall('editor.action.goToTypeDefinition')<CR>
nmap <silent> grn :call VSCodeCall('editor.action.rename')<CR>

" -----------------------------------------------------------
" VSCode Folding
" -----------------------------------------------------------

map zl <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
map z; <Cmd>call VSCodeNotify('editor.foldAll')<CR>
map zm <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
map zp <Cmd>call VSCodeNotify('editor.gotoParentFold')<CR>
map zj <Cmd>call VSCodeNotify('editor.gotoNextFold')<CR>
map zk <Cmd>call VSCodeNotify('editor.gotoPreviousFold')<CR>

" -----------------------------------------------------------
" -----------------------------------------------------------
