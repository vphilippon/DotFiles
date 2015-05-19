DotFiles
========


My Dotfiles highly inspired of others Dotfiles, which were highly inspired of others Dotfiles, and so on.
Lots of personnal setting you'll have to fix (directorys, git info, etc.).
Be carefull if you intend to install it.

Current track of dotfiles :
* Vim
* Git
* Ghci (Haskell)
* Bash


To install, clone this repository into ~/.dotifiles and cd into it :

    git clone --recursive https://github.com/vphilippon/dotfiles.git ~/.dotfiles && cd ~/.dotfiles

Don't forget to add the `--recursive` option to get all the submodules used for vim plugins.

Start the bash install script

    ./install.sh

To add new submodule (mostly for vim with pathogen) (with branch tracking), follow this: (Add branch tracking)
  [http://stackoverflow.com/a/18799234](http://stackoverflow.com/a/18799234)

Make sure you have:
-------------------
* Vim :
  * Vim 7.4 or greater with python support (YouCompleteMe)
  * A patched font for `fancy` powerline (see [Lokaltog/vim-powerline/fontpatcher](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher)) (vim-powerline)
  * The Solarized palette for your console emulator, like [Anthony25/gnome-terminal-colors-solarized](https://github.com/Anthony25/gnome-terminal-colors-solarized) (vim-colors-solarized)
  * Ctags (taglist)
  * Cscope (cscope.vim)
  * ghc-mod (with `cabal install ghc-mod`) (neco-ghc)

Notes:
-----
* Existing files will be moved with a .bk extension.
* Existing symbolic links will be removed

Plugin and feature used:
------------
For a list of the plugin used see:
* Vim: [vim/bundle](./vim/bundle)
* Git: TODO

Other interesting tools to have:
--------------------------------
* tmux
* [jimeh/git-aware-prompt](https://github.com/jimeh/git-aware-prompt) (using bash)
* [deadalnix/pixel-saver](https://github.com/deadalnix/pixel-saver) (using gnome)
* git-up (python with pip)
* lnav
* virtualenvwrapper
* pyp
* guake && [coolwanglu/guake-colors-solarized](https://github.com/coolwanglu/guake-colors-solarized)

## Thanks to:

* [Nicolas Lupien](https://github.com/niclupien)
* [Mathias Bynens](https://github.com/mathiasbynens)
* [Charles-André Bouffard](https://github.com/cabouffard)
* [Val Markovic](https://github.com/Valloric)
