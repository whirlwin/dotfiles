#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)

{
    ./$SCRIPTS_DIRECTORY/git.sh
} || {
    echo 'git.sh failed - continuing anyways...'
}

{
    ./$SCRIPTS_DIRECTORY/profile.sh
} || {
    echo 'profile.sh failed - continuing anyways...'
}

{
    ./$SCRIPTS_DIRECTORY/guake.sh
} || {
    echo 'guake.sh failed - continuing anyways...'
}

{
    ./$SCRIPTS_DIRECTORY/zsh.sh
} || {
    echo 'zsh.sh failed - continuing anyways...'
}

