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

#------------------------------
# Install Packages
#------------------------------
# Basic
sudo yum install -y tmux
sudo yum install -y ftp
sudo yum install -y wget

sudo yum install -y chrony
systemctl status chronyd.service
systemctl start chronyd.service
chronyc sources

# pukiwiki
#sudo yum install -y php

