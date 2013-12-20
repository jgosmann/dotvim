source ~/.vim/bundles.vim

autocmd! BufWritePost .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC
autocmd! BufWritePost ~/.vim/*.vim
autocmd BufWritePost ~/.vim/*.vim source $MYVIMRC

set encoding=utf-8
source ~/.vim/interface-settings.vim
source ~/.vim/syntax-settings.vim
source ~/.vim/indentation-settings.vim
source ~/.vim/options.vim
source ~/.vim/plugin-settings.vim
source ~/.vim/keys.vim
source ~/.vim/keys-neo2.vim

source ~/.vim/functions.vim
