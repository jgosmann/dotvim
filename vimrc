source ~/.vim/bundles.vim
if filereadable(expand('~/.local/share/vim/plugin/ropevim.vim'))
    source ~/.local/share/vim/plugin/ropevim.vim
elseif filereadable(expand('~/Library/Python/2.7/share/vim/plugin/ropevim.vim'))
    source ~/Library/Python/2.7/share/vim/plugin/ropevim.vim
endif

augroup vimrc
    autocmd!
    autocmd BufWritePost .vimrc source $MYVIMRC
    autocmd BufWritePost ~/.vim/*.vim source $MYVIMRC
augroup END

set encoding=utf-8
source ~/.vim/interface-settings.vim
source ~/.vim/syntax-settings.vim
source ~/.vim/indentation-settings.vim
source ~/.vim/options.vim
source ~/.vim/plugin-settings.vim
source ~/.vim/keys.vim
source ~/.vim/keys-neo2.vim

source ~/.vim/functions.vim
