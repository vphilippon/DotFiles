DotFiles
========

My Dotfiles highly inspired of others Dotfiles, which were highly inspired of others Dotfiles, and so on.
Lots of personnal setting you'll have to fix (directorys, git info, etc.).
Be carefull if you intend to install it.

Current track of dotfiles :
* Vim
* Git
* Ghci (Haskell)


To install, clone this repository into ~/.dotifiles and cd into it :

    git clone --recursive https://github.com/vphilippon/dotfiles.git ~/.dotfiles && cd ~/.dotfiles

Don't forget to add the `--recursive` option to get all the submodules used for vim plugins.

Start the bash install script

    ./install.sh

To add new submodule (with branch tracking), follow this: (Add branch tracking)
  [http://stackoverflow.com/a/18799234](http://stackoverflow.com/a/18799234)

Make sure you have:
-------------------
* Vim 7.4 or greater with python support (YouCompleteMe)
* A patched font for `fancy` powerline (vim-powerline)
* The Solarized palette for your console emulator (vim-colors-solarized)
* Ctags (taglist)
* Cscope (cscope.vim)
* ghc-mod (neco-ghc) (`cabal install ghc-mod`)

Notes:
-----
* Existing files will be moved with a .bk extension.
* Existing symbolic links will be removed

Other interesting tools to have:
--------------------------------
* tmux
* [jimeh/git-aware-prompt](https://github.com/jimeh/git-aware-prompt) (using bash)
* [deadalnix/pixel-saver](https://github.com/deadalnix/pixel-saver) (using gnome)
* git-up (python with pip)
* lnav
* virtualenvwrapper
* pyp

## Thanks to… (even if some don't know me)

* [Nicolas Lupien](https://github.com/niclupien)
* [Mathias Bynens](https://github.com/mathiasbynens)
* [C-A Bouffard](https://github.com/cabouffard)
* [Val Markovic](https://github.com/Valloric)
