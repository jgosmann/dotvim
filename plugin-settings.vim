" a.vim
let g:alternateExtensions_{'cc'} = "h,hh"
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
let g:EclimPythonValidate=0

" gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" latex-box
let g:LatexBox_Folding = 1
let g:LatexBox_viewer = 'open -a Skim'

" Man pages
runtime ftplugin/man.vim

" omnicpp
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0

" python-mode
let g:pymode_rope_guess_project = 0
let g:pymode_lint_write = 0
let g:pymode_lint_checker = "pyflakes,mccabe,pep8"

" supertab
function! LatexTagContext()
    let curline = getline('.')
    let cnum = col('.')
    if (&ft == 'tex' && curline =~ '.*\\\S\+\%' . cnum . 'c')
        return "\<c-x>\<c-o>"
    endif
endfunction

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['LatexTagContext', 's:ContextText', 's:ContextDiscover']
let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

" taglist
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let Tlist_arduino_settings = 'c;f:Functions'

" Setup rainbow parenthesis
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadRound()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadSquare()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadBraces()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadChevrons()

