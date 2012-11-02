syntax enable
set background=light
colorscheme solarized

hi link DefinedName PreProc
hi link GlobalConstant Constant
hi link Enumerator Constant
hi link LocalVariable Identifier
hi link GlobalVariable Identifier
hi link Function Identifier
hi link Member Identifier
hi link Class Type
hi link Union Type
hi link Structure Type
hi link EnumerationName Type

set list
set listchars=tab:▸\ ,trail:.,extends:¬,nbsp:.
highlight Trailspaces guifg=#8a8aa9
match TrailSpaces /\s\+$/
set showbreak=>

autocmd BufNewFile,BufRead *.frag,*.fs,*.glsl set filetype=glsl400
autocmd BufNewFile,BufRead *.ino set filetype=arduino

