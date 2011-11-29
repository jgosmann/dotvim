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

" Some useful shortcuts
nmap ö :b#<CR>
nmap Ö :A<CR>
nmap ä <C-]>

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

