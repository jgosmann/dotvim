set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'a.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-scripts/Arduino-syntax-file'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/Command-T'
Plugin 'Conque-Shell'
Plugin 'vim-scripts/CTAGS-Highlighting'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'glsl.vim'
Plugin 'sjl/gundo.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/nerdcommenter'
Plugin 'OmniCppComplete'
Plugin 'rainbow_parentheses.vim'
Plugin 'jgosmann/ropevim'
Plugin 'sjl/splice.vim'
Plugin 'tpope/vim-surround'
if has('job')
    Plugin 'w0rp/ale'
else
    Plugin 'scrooloose/syntastic'
endif
Plugin 'taglist.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-unimpaired'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'YankRing.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/webapi-vim'
Plugin 'ZoomWin'

call vundle#end()
filetype plugin indent on
