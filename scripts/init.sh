#!/bin/sh

{
    ./git.sh
} || {
    echo 'git.sh failed - continuing anyways...'
}

{
    ./profile.sh
} || {
    echo 'profile.sh failed - continuing anyways...'
}

{
    ./guake.sh
} || {
    echo 'guake.sh failed - continuing anyways...'
}

{
    ./zsh.sh
} || {
    echo 'zsh.sh failed - continuing anyways...'
}

