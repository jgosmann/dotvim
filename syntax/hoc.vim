if exists("b:current_syntax")
    finish
endif

syn keyword Statement help return break continue stop print delete read debug em setpointer insert uninsert
syn keyword Statement public external
syn keyword Statement new nextgroup=objinit skipwhite
syn keyword Statement create connect
syn keyword Statement access forall forsec ifsec
syn keyword Conditional if else while for
syn keyword Keyword begintemplate endtemplate proc func obfunc iterator nextgroup=namedecl skipwhite
syn keyword Statement double depvar eqn objectvar objref strdef local localobj
syn keyword Operator "^" "-" "*" "/" "%" "+" "x" "==" "!=" "<" "<=" ">" ">=" "&&" "||" "=" "+=" "-=" "*=" "/=" ":"

syn keyword Todo TODO FIXME ??? XXX containedin=Comment contained

syn match Comment "//.*$"
syn match var "[_a-zA-Z0-9]\+" transparent contains=NONE
syn match Number "\(-\s*\)\?\d\+\(\.\d*\)\?"
syn match Number "\(-\s*\)\?\d*\.\d\+"
syn match Identifier "\$[&os]\?\d\+$"
syn region String start=+"+ skip=+\\"+ end=+"+

syn match Identifier "\(^\s\+\zs\)[_a-zA-Z0-9]\+"
syn match assignment "\(^\s\+\zs\)[_a-zA-Z0-9]\+\s*=" transparent contains=None
syn match fn "\(^\s\+\zs\)[_a-zA-Z0-9]\+\s*(" transparent contains=None
syn match namedecl "[_a-zA-Z0-9]\+" containedin=NONE contained
syn match objinit "[_a-zA-Z0-9]\+" containedin=NONE contained
syn region template start="begintemplate" end="endtemplate" fold transparent
syn region block start="{" end="}" fold transparent

highlight def link namedecl Type
highlight def link objinit Type

let b:current_syntax = "hoc"
