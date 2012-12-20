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

autocmd BufReadPre *.py IP python-mode
autocmd BufNewFile *.py IP python-mode
autocmd BufReadPre *.h,*.hh,*.hu,*.c,*.cc,*.cu,*.cpp IP omnicpp
autocmd BufNewFile *.h,*.hh,*.hu,*.c,*.cc,*.cu,*.cpp IP omnicpp

source ~/.vim/interface-settings.vim
source ~/.vim/syntax-settings.vim
source ~/.vim/indentation-settings.vim
source ~/.vim/options.vim
source ~/.vim/plugin-keys.vim
source ~/.vim/plugin-settings.vim
source ~/.vim/keys.vim
source ~/.vim/keys-neo2.vim

source ~/.vim/functions.vim

