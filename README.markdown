Installation
============

1. `git clone https://github.com/jgosmann/dotvim.git ~/.vim`
2. `cd ~/.vim && git submodule update --init`
    1. If you are asked for any passwords just press return.
    2. We are not using `git clone --recursive` because it is enough to check
       out one level of submodules. Moreover, some of the submodules in deeper
       levels use the git:// protocol (instead of https://) which may be
       blocked by firewalls.
3. `ln -s ~/.vim/vimrc ~/.vimrc`
4. `cd ~/.vim/bundle/command-t/ruby/command-t/`
5. `ruby extconf.rb`
6. `make`

Key Mappings
============

In normal mode:

- `ü` is the leader key.
- `ö` switches to alternate buffer (`:b#`)
- `Ö` switches to alternate file, e.g. .h to .cpp (`:A`, a.vim plugin)
- `ä` jumps to tag (`<C-]>`)
- Arrow keys allow you to move between windows.
- `<D-CR>` toggles full screen mode.
- `<D-Up>` and `<D-Down>` move selected text one line up or down (`[egv` and
  `]egv` using the Unimpaired plugin).
- `<leader>f` formats the current paragraph (`gqip`).
- `<leader>u` toggle Gundo plugin.
- `<leader>r` toggle Rainbow parenthesis plugin.
- `<C-l>` toggle the Taglist plugin.
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
- [Eclim](http://eclim.org/) (can be loaded on demand with IPI)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [Gist](https://github.com/mattn/gist-vim)
- [GLSL](http://www.vim.org/scripts/script.php?script_id=1002)
- [Gundo](http://sjl.bitbucket.org/gundo.vim/)
- [IPI](https://github.com/jceb/vim-ipi)
- [latex-box](https://github.com/LaTeX-Box-Team/LaTeX-Box)
- [mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
- [Nerd Commenter](http://www.vim.org/scripts/script.php?script_id=1218)
- [OmniCpp](http://www.vim.org/scripts/script.php?script_id=1520) (will only be
  loaded for C/C++ files)
- [Pathogen](https://github.com/tpope/vim-pathogen)
- [python-mode](https://github.com/klen/python-mode) (will only be loaded for
  Python files)
- [Rainbow Parenthesis](http://www.vim.org/scripts/script.php?script_id=1561)
- [Snipmate](http://www.vim.org/scripts/script.php?script_id=2540)
- [Solarized](http://ethanschoonover.com/solarized)
- [Supertab](http://www.vim.org/scripts/script.php?script_id=1643)
- [Surround](https://github.com/tpope/vim-surround)
- [Taglist](http://vim-taglist.sourceforge.net/)
- [tlib](http://www.vim.org/scripts/script.php?script_id=1863)
- [unimpaired](http://www.vim.org/scripts/script.php?script_id=1590)
- [yankring](http://www.vim.org/scripts/script.php?script_id=1234)
- [zoomwin](http://www.vim.org/scripts/script.php?script_id=508)

