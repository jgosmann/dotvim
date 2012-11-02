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
let g:EclimPythonValidate=0

" gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" vim-latex
" See http://mactex-wiki.tug.org/wiki/index.php/SyncTeX for configuration
" examples.
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode $*'
if has('macunix')
    let g:Tex_ViewRule_pdf = 'Skim'
endif

let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" Man pages
runtime ftplugin/man.vim

" omnicpp
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0

" python-mode
let no_py_maps = 1
let g:pymode_rope_guess_project = 0
let g:pymode_lint_write = 1
let g:pymode_lint_checker = "pyflakes,mccabe"

" snipmate
let g:snips_trigger_key = '<C-CR>'

" supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

" taglist
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let tlist_arduino_settings = 'c;f:Functions'

" Setup rainbow parenthesis
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadRound()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadSquare()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadBraces()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadChevrons()

