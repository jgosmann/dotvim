" Load pathogen
filetype off
set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin on
syntax enable

" Set colorscheme
if has("gui_running")
    colorscheme wombat
endif

" Setup rainbow parenthesis
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadRound()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadSquare()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadBraces()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadChevrons()

" set font and other gui options for MacVim
set guifont=Monaco:h13
set guioptions-=T
set guioptions+=c
if has("gui_running")
    set fuoptions=maxvert,maxhorz
endif

" some shortcuts
let mapleader="ö"
imap jj <Esc>
imap jJ <Esc>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap j gj
nnoremap k gk

nmap <CR> <C-]>

nmap <C-f> :set fullscreen!<CR>
imap <C-f> <Esc>:set fullscreen!<CR>a

map <leader><leader> <leader>t

map <leader>o :TlistToggle<CR>
imap <C-o> <Esc>:TlistToggle<CR><C-w>h

map <leader>r :ToggleRaibowParenthesis<CR>

nnoremap <leader>u :GundoToggle<CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap <leader>w <C-w>v<C-w>l

nmap <leader>f gqip

" text bubbling
vmap <D-Up> [egv
vmap <D-Down> ]egv

" vi settings
set hidden
set encoding=utf-8
set scrolloff=3
set incsearch
"set hlsearch
set ignorecase
set smartcase
set gdefault
set number
set relativenumber
set cursorline
set ttyfast
set wildmenu
set backspace=indent,eol,start
set history=1000
set undolevels=1000
set undofile
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell
set noerrorbells
set nobackup
set nowrap
set textwidth=80
set colorcolumn=81
set formatoptions=qrn1

" indentation
filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set list
set listchars=tab:▸\ ,trail:.,extends:¬,nbsp:.
"autocmd ColorScheme * highlight NonText guifg=#8a8aa9
"autocmd ColorScheme * highlight SpecialKey guifg=#8a8aa9
"autocmd ColorScheme * highlight TrailSpaces guifg=#8a8aa9
highlight Trailspaces guifg=#8a8aa9
match TrailSpaces /\s\+$/
set showbreak=>

" status line
set ls=2
set statusline=%n:\ %t%M%R%H%W\ \ %{fugitive#statusline()}%=[%02B]\ \ LF=%{&ff}\ T=%Y\ \ len=%L\ \ %3p%%\ %3l:%-2c\ 

" eclim
let g:EclimMakeLCD=0

" set ctags path for taglist
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"

let g:SuperTabDefaultCompletionType ="context"

" autocmd
autocmd filetype text setlocal nolist
autocmd filetype text setlocal wrap
autocmd filetype text setlocal linebreak
autocmd filetype text,tex,html setlocal formatoptions-=l
autocmd filetype text,tex,html setlocal formatoptions+=tacw

autocmd BufRead,BufNewFile * setlocal relativenumber

autocmd! BufWritePost .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC

