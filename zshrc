# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# -- Personnal misc config line by vphilippon --

# Source virtualenvwrapper.sh if it exists
if [[ -e "/usr/share/virtualenvwrapper/virtualenvwrapper.sh" ]];
then
  source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
else
  echo "!!! --- virtualenvwrapper not found --- !!!"
fi

# Source my own config files
source ~/.zsh/zsh_aliases
source ~/.zsh/zsh_functions


# -- Antigen config line by vphilippon --
# Load Antigen
source ~/.zsh/antigen/antigen.zsh 

# Load oh-my-zsh lib
antigen use oh-my-zsh

# Load an awesome theme
antigen theme crunch
 
# Load those awesome plugins
antigen bundle zsh-users/zsh-syntax-highlighting 

# Tell antigen that you're done.
antigen apply

