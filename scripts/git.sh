#!/bin/sh

if [ ! -f ~/.ssh/id_rsa.pub ]; then
  ssh-keygen
else
  echo "~/.ssh/id_rsa.pub already exists. Skipping..."
fi

echo 'Please type in your name: '
read NAME

echo 'Please type in your email address: '
read EMAIL


# Configure global gitignore
SCRIPT_DIRECTORY=$(dirname $0)
cp -f "$SCRIPT_DIRECTORY/../.gitignore_global" ~/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global core.editor vim
git config --global core.pager 'less -+F'


if [ ! -f ~/.ssh/id_rsa.pub ]; then
  echo "SSH key: $(cat ~/.ssh/id_rsa.pub)"
fi
