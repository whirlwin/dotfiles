#!/bin/sh

# Configure global gitignore
SCRIPT_DIRECTORY=$(dirname $0)
cp -f "$SCRIPT_DIRECTORY/../.gitignore_global" ~/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global
git config --global user.name whirlwin
git config --global user.email $1
git config --global core.editor vim
