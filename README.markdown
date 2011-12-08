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
- `<leader>` toggle the Taglist plugin.
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

Please note that in operator pending mode (e.g. when pressing just `d`) you
still have to use the original `t` command instead of the redefined `l` command.
I think, this comes from the implementation of the YankRing plugin.

You can deactivate these special remappings by TODO.

Included Plugins
================

- a.vim
- Command-t
- Conque
- Ctags-highlighting
- eclim (TODO exclude)
- Fugitive
- Gist
- GLSL
- Gundo
- mw-utils
- Nerd Commenter
- OmniCpp
- Pathogen
- Rainbow Parenthesis
- Snipmate
- Solarized
- Supertab
- Surround
- Taglist
- tlib
- unimpaired
- vim-latex
- vimsh
- yankring
- zoomwin

