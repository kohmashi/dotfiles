#!/bin/sh -

WORKDIR=`pwd`

#------------------------------
# Creating Symbolic Link
#------------------------------
# dot-files
unlink ~/.bashrc
unlink ~/.zshrc
unlink ~/.vimrc
unlink ~/.gemrc

# Durectories
unlink ~/doc
unlink ~/bin
unlink ~/etc

# dot-files
ln -s $WORKDIR/.bashrc ~/
ln -s $WORKDIR/.zshrc ~/
ln -s $WORKDIR/.vimrc ~/
ln -s $WORKDIR/.gemrc ~/

# Durectories
ln -s $WORKDIR/doc ~/
ln -s $WORKDIR/bin ~/
ln -s $WORKDIR/etc ~/

