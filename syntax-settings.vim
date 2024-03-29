if &diff
    syntax manual
else
    syntax on
endif

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

function! s:GetHighlightColor(group)
    redir => l:highlight
        silent execute ':hi ' . a:group
    redir END
    return join(remove(split(l:highlight), 2, -1))
endfun

let s:diffChangeColor = s:GetHighlightColor("DiffText")
let s:diffTextColor = s:GetHighlightColor("DiffChange")
execute 'hi! DiffChange ' . s:diffChangeColor
execute 'hi! DiffText ' . s:diffTextColor

set list
set listchars=tab:▸\ ,trail:.,extends:¬,nbsp:.
highlight Trailspaces guifg=#8a8aa9
match TrailSpaces /\s\+$/
set showbreak=>
