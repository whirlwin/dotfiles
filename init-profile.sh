#!/bin/sh

cp .profile ~/

sed -i '1isource ~/.profile' ~/.zshrc

