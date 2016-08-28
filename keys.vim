" leader key
let mapleader = "ü"
let maplocalleader = "ü"

" Some useful shortcuts
nnoremap ö :b#<CR>
nnoremap Ö :A<CR>
nnoremap ä <C-]>
nnoremap <leader>d :call DiffToggle()<CR>

" fullscreen
nnoremap <D-CR> :set fullscreen!<CR>

" windows
noremap <Left> <C-w>h
noremap <Down> <C-w>j
noremap <Up> <C-w>k
noremap <Right> <C-w>l

" search
nnoremap / /\v
nnoremap ? ?\v

" quickly edit vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>

" format inner paragraph
nnoremap <leader>f gqip

" quick git commits
nnoremap <leader>g :Gcommit -a<CR>i

" gundo
noremap <leader>u :GundoToggle<CR>

" Command-T
nnoremap <leader>T :CommandTFlush<CR>

" latex-box
if has('macunix')
    nnoremap <silent> <leader>ls :silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>" "%:p" <CR>
else
    nnoremap <silent> <leader>ls :silent !okular --unique "<C-R>=LatexBox_GetOutputFile()<CR>\#src:<C-R>=line('.')<CR>%:p" &<CR>
endif

" rainbow parenthesis
noremap <leader>p :RainbowParenthesesToggle<CR>

" taglist
noremap <C-l> :TlistToggle<CR>

" unimpaired: text bubbling
vmap <D-Up> [egv
vmap <D-Down> ]egv

" YouCompleteMe
noremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
