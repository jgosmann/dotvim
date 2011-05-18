" Load pathogen
filetype off
set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

source ~/.vim/bundle/a/a.vim

filetype plugin on
set foldlevel=2
syntax enable

" Set colorscheme
set background=light
colorscheme solarized

" Setup rainbow parenthesis
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadRound()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadSquare()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadBraces()
"autocmd BufRead,BufNew * call rainbow_parenthsis#LoadChevrons()

" set font and other gui options for MacVim
set guifont=Menlo:h14
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

nmap <D-CR> :set fullscreen!<CR>

map <leader><leader> <leader>t

map <leader>o :TlistToggle<CR>
imap <C-o> <Esc>:TlistToggle<CR><C-w>h

map <leader>r :ToggleRaibowParenthesis<CR>

nnoremap <leader>u :GundoToggle<CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap <leader>w <C-w>v<C-w>l

nmap <leader>f gqip

nmap <leader>b <C-w>s:make<CR>:q<CR>

" text bubbling
vmap <D-Up> [egv
vmap <D-Down> ]egv

let g:snips_trigger_key = '<m-tab>'

" vi settings
runtime ftplugin/man.vim
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

set tags+=~/.vim/tags/stl
set tags+=~/.vim/tags/qt

"let OmniCpp_NamespaceSearch = 1 
"let OmniCpp_GlobalScopeSearch = 1 
"let OmniCpp_ShowAccess = 1 
"let OmniCpp_MayCompleteDot = 1 
"let OmniCpp_MayCompleteArrow = 1 
"let OmniCpp_MayCompleteScope = 1 
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"] 

let g:alternateExtensions_{'cc'} = "hh"
let g:alternateExtensions_{'hh'} = "cc"
let g:alternateExtensions_{'l'} = "y"
let g:alternateExtensions_{'y'} = "l"

"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,preview

let g:SuperTabDefaultCompletionType ="context"

" autocmd
autocmd filetype text setlocal nolist
autocmd filetype text setlocal wrap
autocmd filetype text setlocal linebreak
autocmd filetype text,tex,html setlocal formatoptions-=l
autocmd filetype text,tex,html setlocal formatoptions+=tacw

autocmd filetype cpp,tex setlocal foldmethod=syntax

autocmd BufRead,BufNewFile * setlocal relativenumber

autocmd! BufWritePost .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC

