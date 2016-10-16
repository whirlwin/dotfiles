#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)
cp -f "$SCRIPTS_DIRECTORY/../.profile" ~/.profile

sed -i '1isource ~/.profile' ~/.zshrc

