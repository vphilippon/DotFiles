#!/bin/bash
#
# Copy dotfiles to home
#
# Nicolas Lupien niclupien@gmail.com
# 
# Edited by Vincent Philippon
#

create_link() {
  f=$1
  dest=$2

  if [ -h $dest ]
  then
    echo "Removing symbolic link $dest"
    rm $dest
  else [ -e $dest ]
    echo "Moving to $dest.bk"
    mv $dest "$dest.bk"
  fi

  ln -s $f $dest
}

for f in ~/.dotfiles/*
do
  if [[ $f != *install.sh && $f != *README.md ]] 
  then
    create_link $f "$HOME/.${f##*/}" 
  fi
done

echo "done!"
