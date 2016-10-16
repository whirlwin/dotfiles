#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)

rm -f "$SCRIPTS_DIRECTORY/install-zsh.sh"

# Clone oh-my-zsh. TODO Make script execute as subscript to prevent sudden exit
{
    wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O ./install-zsh.sh
    chmod +x ./install-zsh.sh
    command ./install-zsh.sh
} || {
    echo 'oh-my-zsh already cloned - continuing...'
}

# Install zsh-syntax-highlighting
{
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
} || {
    echo 'info: zsh-syntax-highlighting already cloned - continuing anyways...'
}

cp -f "$SCRIPTS_DIRECTORY/../.zshrc" ~/.zshrc
