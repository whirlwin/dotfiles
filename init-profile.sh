#!/bin/sh

wget https://raw.github.com/whirlwin/init/master/.profile -O ~/.profile

sed -i '1isource ~/.profile' ~/.zshrc

