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
let g:LatexBox_latexmk_async = 1
let g:LatexBox_Folding = 1
let g:LatexBox_viewer = 'open -a Skim'
let g:LatexBox_ignore_warnings = ['specifier changed to']
let g:LatexBox_quickfix = 2

" Man pages
runtime ftplugin/man.vim

" omnicpp
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0

" python-mode
let g:pymode_rope_guess_project = 0
let g:pymode_lint_write = 1
let g:pymode_lint_checker = "pyflakes,mccabe,pep8"

" syntastic
let g:syntastic_python_checkers = []
let g:syntastic_tex_checkers = ['chktex']

" taglist
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let Tlist_arduino_settings = 'c;f:Functions'

" UltiSnip
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'

" YouCompleteMe
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'python' : 1,
  \}
