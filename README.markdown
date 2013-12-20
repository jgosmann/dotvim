Installation
============

1. `git clone https://github.com/jgosmann/dotvim.git ~/.vim`
2. `vim -u ~/.vim/bundles.vim +BundleInstall`
3. `ln -s ~/.vim/vimrc ~/.vimrc`

Compile Command-T
-----------------

4. `cd ~/.vim/bundle/Command-T/ruby/command-t/`
5. `ruby extconf.rb`
6. `make`

Compile YouCompleteMe
---------------------

7. `cd ~/.vim/bundle/YouCompleteMe`
8. `./install.sh --clang-completer

Key Mappings
============

In normal mode:

- `ü` is the leader key.
- `ö` switches to alternate buffer (`:b#`).
- `Ö` switches to alternate file, e.g. .h to .cpp (`:A`, a.vim plugin).
- `ä` jumps to tag (`<C-]>`).
- `gd` executes GoToDefinitionElseDeclaration from the YouCompleteMe plugin.
- Arrow keys allow you to move between windows.
- `<D-CR>` toggles full screen mode.
- `<D-Up>` and `<D-Down>` move selected text one line up or down (`[egv` and
  `]egv` using the Unimpaired plugin).
- `<leader>f` formats the current paragraph (`gqip`).
- `<leader>u` toggle Gundo plugin.
- `<leader>p` toggle Rainbow parenthesis plugin.
- `<C-l>` toggle the Taglist plugin.
- `<C-j>` to expand snippet or jump to the next place holder.
- `<C-k>` to jump to the previous placeholder in a snippet.
- `<leader>ev` opens the .vimrc file.

Neo2 Keyboard Layout remappings
-------------------------------

I am using the [Neo2 keyboard layout](http://neo-layout.org/) and did therefore
some special key remappings to use the home row keys of the right hand to
navigate like usual:

- `s`, `n`, `r`, `t` navigation (`n` and `r` act on screen lines like `gj` and
  `gk`)
- `k` (“kill”) acts like the original `s` (“substitute”) command.
- `j` (“jump”) acts like the original `n` (“next”) command.
- `h` (“hide”) acts like the original `r` (“replace”) command.
- `l` (“look up”) acts like the original `t` (“to”) command.

You can deactivate these special remappings by commenting the following line in
~/.vim/vimrc:

`source ~/.vim/keys-neo2.vim`

### Caveats

Please note that in operator pending mode (e.g. when pressing just `d`) you
still have to use the original `t` command instead of the redefined `l` command.
I think, this comes from the implementation of the YankRing plugin.

Also, the netrw filebrowser does not allow you to use the homerow to navigate
given the active Neo2 remappings (actually, the `n` key will work, but the `r`
key not for example). Therefore, I allow upwards and downwards movement in the
file browser with the `<Up>` and `<Down>` keys. Of course these can then not be
used to switch windows when in the filebrowser (use `<C-w><Up>` and
`<C-w><Down>` instead).

Included Plugins
================

- [a.vim](http://www.vim.org/scripts/script.php?script_id=31)
- [Command-t](https://wincent.com/products/command-t)
- [Conque](http://code.google.com/p/conque/)
- [Ctags-highlighting](http://www.cgtk.co.uk/vim-scripts/taghighlight)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [Gist](https://github.com/mattn/gist-vim)
- [GLSL](http://www.vim.org/scripts/script.php?script_id=1002)
- [Gundo](http://sjl.bitbucket.org/gundo.vim/)
- [latex-box](https://github.com/LaTeX-Box-Team/LaTeX-Box)
- [mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
- [Nerd Commenter](http://www.vim.org/scripts/script.php?script_id=1218)
- [OmniCpp](http://www.vim.org/scripts/script.php?script_id=1520)
- [python-mode](https://github.com/klen/python-mode) (in fact a [slightly modified
  fork by me](https://github.com/jgosmann/python-mode) is used)
- [Rainbow Parenthesis](http://www.vim.org/scripts/script.php?script_id=1561)
- [Solarized](http://ethanschoonover.com/solarized)
- [Supertab](http://www.vim.org/scripts/script.php?script_id=1643)
- [Surround](https://github.com/tpope/vim-surround)
- [Syntastic](https://github.com/scrooloose/syntastic)
- [Taglist](http://vim-taglist.sourceforge.net/)
- [tlib](http://www.vim.org/scripts/script.php?script_id=1863)
- [UltiSnips](https://github.com/SirVer/ultisnips)
- [unimpaired](http://www.vim.org/scripts/script.php?script_id=1590)
- [vundle](https://github.com/gmarik/vundle)
- [yankring](http://www.vim.org/scripts/script.php?script_id=1234)
- [YouCompleteMe](http://valloric.github.io/YouCompleteMe/)
- [zoomwin](http://www.vim.org/scripts/script.php?script_id=508)

