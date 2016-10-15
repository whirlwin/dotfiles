#!/bin/sh

cp -f ../.profile ~/

sed -i '1isource ~/.profile' ~/.zshrc

