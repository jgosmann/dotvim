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
autocmd filetype cpp,tex setlocal foldmethod=syntax
set formatoptions=qrn1c
autocmd filetype tex,text setlocal formatoptions+=taw
set hidden
set history=1000
set incsearch
autocmd filetype text setlocal linebreak
autocmd filetype text setlocal nolist
set number
set scrolloff=3
set spell
autocmd filetype glsl* setlocal nospell
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
autocmd filetype text,html setlocal wrap

