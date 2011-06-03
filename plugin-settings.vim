" a.vim
source ~/.vim/bundle/a/a.vim
let g:alternateExtensions_{'cc'} = "hh"
let g:alternateExtensions_{'hh'} = "cc"
let g:alternateExtensions_{'l'} = "y"
let g:alternateExtensions_{'y'} = "l"

" cscope
" Code copied from the vim help, but removed line to use cscope also
    " for normal tag searches.
if has("cscope")
    set csprg=/opt/local/bin/cscope
    set csto=0
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

" eclim
let g:EclimMakeLCD=0

" Man pages
runtime ftplugin/man.vim

" omnicpp
let OmniCpp_ShowPrototypeInAbbr = 1

" snipmate
"let g:snips_trigger_key = '<CR>'

" supertab
let g:SuperTabDefaultCompletionType ="context"

" taglist
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"

" Setup rainbow parenthesis
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadRound()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadSquare()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadBraces()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadChevrons()

