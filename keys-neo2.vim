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

" Allow arrow keys in file browser
augroup netrw
    autocmd filetype netrw noremap <buffer> <Up> <Up>
    autocmd filetype netrw noremap <buffer> <Down> <Down>
augroup END

" Fix ConqueTerm keys
function! FixConqueKeys(term)
    sil exe 'noremap <silent> <buffer> s h'
    sil exe 'noremap <silent> <buffer> r gk'
    sil exe 'noremap <silent> <buffer> k :echo "Change mode disabled in shell."<CR>'
    sil exe 'noremap <silent> <buffer> h :echo "Replace mode disabled in shell."<CR>'
endfunction

call conque_term#register_function('after_startup', 'FixConqueKeys')

