filetype off
set nocompatible

call pathogen#infect()
call pathogen#helptags()
call ipi#inspect()

filetype plugin indent on

autocmd! BufWritePost .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC
autocmd! BufWritePost ~/.vim/*.vim
autocmd BufWritePost ~/.vim/*.vim source $MYVIMRC

autocmd BufNewFile,BufReadPre *.h,*.hh,*.hu,*.c,*.cc,*.cu,*.cpp silent IP omnicpp
autocmd BufNewFile,BufReadPre *.py silent IP python-mode
autocmd BufNewFile,BufReadPre *.tex silent IP latex-box

source ~/.vim/interface-settings.vim
source ~/.vim/syntax-settings.vim
source ~/.vim/indentation-settings.vim
source ~/.vim/options.vim
source ~/.vim/plugin-keys.vim
source ~/.vim/plugin-settings.vim
source ~/.vim/keys.vim
source ~/.vim/keys-neo2.vim

source ~/.vim/functions.vim

