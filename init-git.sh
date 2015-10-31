#!/bin/sh

#Configure global gitignore
wget https://raw.githubusercontent.com/whirlwin/init/master/.gitignore_global -O ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Configure username and email:
git config --global user.name whirlwin
git config --global user.email $1
git config --global core.editor vim
