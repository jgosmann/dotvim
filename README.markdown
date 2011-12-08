Installation
============

1. `git clone https://github.com/jgosmann/dotvim.git ~/.vim`
2. `cd ~/.vim && git submodule update --init`
    1. If you are asked for any passwords just press return.
    2. We are not using `git clone --recursive` because it is enough to check
       out one level of submodules. Moreover, some of the submodules in deeper
       levels use the git:// protocol (instead of https://) which may be
       blocked by firewalls.
3. ln -s ~/.vim/vimrc ~/.vimrc
4. cd ~/.vim/bundle/command-t/ruby/command-t/
5. ruby extconf.rb
6. make

