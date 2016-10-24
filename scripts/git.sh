#!/bin/sh

ssh-keygen

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

echo "SSH key: $(cat ~/.ssh/id_rsa.pub)"

