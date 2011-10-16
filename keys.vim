" leader key
let mapleader = "ü"

" Neo2 remappings
noremap s h
noremap n gj
noremap r gk
noremap t l
ounmap s
ounmap n
ounmap r
ounmap t
" kill
noremap k s
ounmap k
" jump
noremap j n
ounmap j
" hide
noremap h r
ounmap h
" lookup
noremap l t
ounmap l

" fullscreen
nnoremap <D-CR> :set fullscreen!<CR>

" windows
noremap <Left> <C-w>h
noremap <Down> <C-w>j
noremap <Up> <C-w>k
noremap <Right> <C-w>l

" quickly edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" format inner paragraph
nnoremap <leader>f gqip

