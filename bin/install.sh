#!/usr/bin/env bash

GREEN='\x1b[32m'
NC='\033[0m'

CONF_PATH=`git rev-parse --show-toplevel`/config

# git
ln -sf $CONF_PATH/git/gitconfig $HOME/.gitconfig

# vim
ln -sf $CONF_PATH/vim/vimrc $HOME/.vimrc

# psql
ln -sf $CONF_PATH/psql/psqlrc $HOME/.psqlrc

if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    $HOME/.fzf/install
fi

echo -e "${GREEN}The installation is finished${NC}"
