DotFiles
========


My Dotfiles highly inspired of others Dotfiles, which were highly inspired of others Dotfiles, and so on.
Lots of personnal setting you might have to fix (directories, git info, etc.).
Be carefull if you intend to install it.

Current track of dotfiles :
* Vim
* Git
* Bash


To install, clone this repository into ~/.dotifiles and cd into it :

    git clone --recursive git@github.com:vphilippon/DotFiles.git ~/.dotfiles && cd ~/.dotfiles

Don't forget to add the `--recursive` option to get all the submodules used for vim plugins.

Start the bash install script

    ./install.sh


To add new git-submodule (with branch tracking), follow this: (Add branch tracking)
  [http://stackoverflow.com/a/18799234](http://stackoverflow.com/a/18799234)


To update every submodule to their latest version (from remote), run

    ./dotupdate.sh

Make sure you have:
-------------------
* Vim :
  * A patched font for `fancy` powerline (see [Lokaltog/vim-powerline/fontpatcher](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher)) (vim-powerline)
  * The Solarized palette for your console emulator, like [Anthony25/gnome-terminal-colors-solarized](https://github.com/Anthony25/gnome-terminal-colors-solarized) (vim-colors-solarized)

To do after running the script:
-------------------------------
* As of now, nothing :)

Notes:
------
* Existing files will be moved with a .bk extension.
* Existing symbolic links will be removed.

Managing plugins:
-----------------
* Vim: Add plugin as git-submodule in [vim/bundle/](./vim/bundle) (managed by [tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)).
* Bash: None yet, only config files symlinked.

Plugins and settings used:
--------------------------
For a list of the plugins and settings used, see:
* Vim: [vimrc](./vimrc), [vim/bundle/](./vim/bundle)
* Git: [gitconfig](./gitconfig), [gitignore_global](./gitignore_global)
* Bash: [bash_aliases](./bash_aliases)

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
