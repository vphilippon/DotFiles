DotFiles
========

My Dotfiles highly inspired of others Dotfiles, which were highly inspired of others Dotfiles, and so on.
Lots of personnal setting you'll have to fix (directorys, git info, etc.).
Be carefull if you intend to install it.

Current track of dotfiles :
* Vim
* Git


To install, clone this repository into ~/.dotifiles and cd into it :

    git clone --recursive http://github.com/vphilippon/dotfiles.git ~/.dotfiles && cd ~/.dotfiles

Don't forget to add the `--recursive` option to get all the submodules used for vim plugins.

Start the bash install script

    ./install.sh

Notes
-----

* Existing files will be moved with a .bk extension.
* Existing symbolic links will be removed

## Thanks to… (even if some don't know me)

* [Nicolas Lupien](https://github.com/niclupien)
* [Mathias Bynens](https://github.com/mathiasbynens)
* [cabouffard](https://github.com/cabouffard)
* [Valloric](https://github.com/Valloric)
