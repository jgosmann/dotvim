" a.vim
source ~/.vim/bundle/a/a.vim
let g:alternateExtensions_{'cc'} = "hh"
let g:alternateExtensions_{'hh'} = "cc"
let g:alternateExtensions_{'l'} = "y"
let g:alternateExtensions_{'y'} = "l"

" ConqueTerm
let g:ConqueTerm_Color = 1
let g:ConqueTerm_TERM = 'xterm'

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

" gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" Man pages
runtime ftplugin/man.vim

" omnicpp
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0

" snipmate
let g:snips_trigger_key = '<C-CR>'

" supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"

" taglist
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"

" Setup rainbow parenthesis
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadRound()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadSquare()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadBraces()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadChevrons()

