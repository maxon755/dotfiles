#!/usr/bin/env bash

CONF_PATH=`git rev-parse --show-toplevel`/config

# git
ln -sf $CONF_PATH/git/gitconfig $HOME/.gitconfig

# vim
ln -sf $CONF_PATH/vim/vimrc $HOME/.vimrc

echo "Config installing is finished"
