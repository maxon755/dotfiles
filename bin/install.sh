#!/usr/bin/env bash

GREEN='\x1b[32m'
NC='\033[0m'

CONF_PATH=`git rev-parse --show-toplevel`/config

# oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
ln -sf $CONF_PATH/zsh/zshrc $HOME/.zshrc

# git
ln -sf $CONF_PATH/git/gitconfig $HOME/.gitconfig

# vim
ln -sf $CONF_PATH/vim/vimrc $HOME/.vimrc

# psql
ln -sf $CONF_PATH/psql/psqlrc $HOME/.psqlrc

# mysql
ln -sf $CONF_PATH/mysql/my.cnf $HOME/.my.cnf

if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    $HOME/.fzf/install
fi

echo -e "${GREEN}The installation is finished${NC}"

