set backspace=indent,eol,start
set nobackup
if v:version >= 703
    set colorcolumn=81
endif
set completeopt=menuone,menu,preview
set cursorline
set gdefault
set encoding=utf-8
set foldlevel=2
autocmd filetype cpp setlocal foldmethod=syntax
set formatoptions=qrn1c
autocmd filetype tex,text setlocal formatoptions+=aw
autocmd filetype tex setlocal formatexpr=FormatSentenceBreaks(v:lnum,v:count,v:char)
set hidden
set history=1000
set incsearch
autocmd filetype tex,text setlocal linebreak nolist
set number
set scrolloff=3
set spell
autocmd filetype matlab,glsl* setlocal nospell
set textwidth=80
set ttyfast
if has("undofile")
    set undofile
endif
set undolevels=1000
set visualbell
set wildignore=*.bak,*.class,*.o,*.pyc,*.swp,*.un~,moc_*.cpp,ui_*.h
set wildmenu
set wildmode=list:longest
set nowrap
autocmd filetype tex,text,html setlocal wrap

