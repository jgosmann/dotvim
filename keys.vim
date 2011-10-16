" leader key
let mapleader = "ü"

" Neo2 remappings
noremap s h
noremap n gj
noremap r gk
noremap t l
" kill
noremap k s
" jump
noremap j n
" hide
noremap h r
" lookup
noremap l t

" fullscreen
nnoremap <D-CR> :set fullscreen!<CR>

" navigation
noremap j gj
noremap k gk

" windows
noremap <C-s> <C-w>h
noremap <C-n> <C-w>j
noremap <C-r> <C-w>k
noremap <C-t> <C-w>l

" quickly edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" format inner paragraph
nnoremap <leader>f gqip

