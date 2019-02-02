#!/usr/bin/env bash

CONF_PATH=`git rev-parse --show-toplevel`/config

# git
ln -sf $CONF_PATH/git/.gitconfig $HOME/.gitconfig

echo "Config installing is finished"
