" gundo
nnoremap <leader>u :GundoToggle<CR>

" latex-box
nmap <silent> <Leader>ls :silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>" "%:p" <CR>

" rainbow parenthesis
noremap <leader>r :ToggleRaibowParenthesis<CR>

" taglist
noremap <C-l> :TlistToggle<CR>

" unimpaired: text bubbling
vmap <D-Up> [egv
vmap <D-Down> ]egv

