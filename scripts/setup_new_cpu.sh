#!/bin/bash
HOME=~
DOTFILES=~/dotfiles

# run this script to setup dotfiles correctly when setting up a new machine
ln -s $DOTFILES/bashrc $HOME/.bashrc
ln -s $DOTFILES/profile $HOME/.profile
ln -s $DOTFILES/ackrc $HOME/.ackrc
ln -sh $DOTFILES/vim $HOME/.vim
ln -s $DOTFILES/vim/vimrc $HOME/.vimrc

# pull submodules, mostly vim plugins
git submodule init && git submodule update --recursive
