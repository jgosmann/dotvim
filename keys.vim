" leader key
let mapleader = "ü"
let maplocalleader = "ü"

" Some useful shortcuts
nnoremap ö :b#<CR>
nnoremap Ö :A<CR>
nnoremap ä <C-]>

" fix number with unit in LaTeX Document
nnoremap <leader>u :s/\(\d\+\)\s*\(\w\+\)/\\SI{\1}{\2}<CR>

" fullscreen
nnoremap <D-CR> :set fullscreen!<CR>

" windows
noremap <Left> <C-w>h
noremap <Down> <C-w>j
noremap <Up> <C-w>k
noremap <Right> <C-w>l

" quickly edit vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>

" format inner paragraph
nnoremap <leader>f gqip

" quick git commits
nnoremap <leader>g :Gcommit -a<CR>i

