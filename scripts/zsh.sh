#!/bin/sh

# Configure zsh
cp -f ../.zshrc ~/
{
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
} || {
 echo 'info: zsh-syntax-highlighting already cloned - continuing anyways...'
}

