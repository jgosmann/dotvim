set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'a.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/CTAGS-Highlighting'
Plugin 'mattn/gist-vim'
Plugin 'glsl.vim'
Plugin 'sjl/gundo.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rainbow_parentheses.vim'
Plugin 'sjl/splice.vim'
Plugin 'tpope/vim-surround'
if has('job')
    Plugin 'w0rp/ale'
else
    Plugin 'scrooloose/syntastic'
endif
Plugin 'taglist.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'YankRing.vim'
Plugin 'mattn/webapi-vim'
Plugin 'ZoomWin'

call vundle#end()
filetype plugin indent on
