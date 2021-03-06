#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)

{
    ./$SCRIPTS_DIRECTORY/i3.sh
} || {
    echo 'i3.sh failed - continuing anyways...'
}

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
    ./$SCRIPTS_DIRECTORY/vim.sh
} || {
    echo 'vim.sh failed - continuing anyways...'
}

{
    ./$SCRIPTS_DIRECTORY/zsh.sh
} || {
    echo 'zsh.sh failed - continuing anyways...'
}

