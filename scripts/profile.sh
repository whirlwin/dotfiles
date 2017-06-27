#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)
cp -f "$SCRIPTS_DIRECTORY/../.profile" ~/.profile

# TODO does not work on mac os
sed -i '1isource ~/.profile' ~/.zshrc

