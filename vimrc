filetype off
set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin on

autocmd! BufWritePost .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC

source ~/.vim/interface-settings.vim
source ~/.vim/syntax-settings.vim
source ~/.vim/indentation-settings.vim
source ~/.vim/plugin-settings.vim
source ~/.vim/keys.vim
source ~/.vim/plugin-keys.vim

