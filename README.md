# Init
This repository contains information on what is needed in order to set up my
workbench.

## Basic programs
Install the following programs on the new platform:

    autojump git nodejs npm vim wget xclip xdg-utils zsh

- [autojump](https://github.com/wting/autojump)

## Shell
Run: `./init-zsh`

## Git
Run: `./init-git.sh <email address>`

# Vim
1. Install .vimrc: `wget https://raw.github.com/whirlwin/init/master/editors/.vimrc -O ~/.vimrc`
2. Install [Vundle](https://github.com/VundleVim/Vundle.vim)
3. Install plugins: `vim +PluginInstall +qall`

# .profile
Run: `./init-profile.sh`

# Misc
1. Make Guake tab names suck less: `gconftool-2 --set /apps/guake/general/use_vte_titles --type boolean false`

## Gnome Shell extensions
Option 1:
- [Static workspaces](https://extensions.gnome.org/extension/484/workspace-grid/)

Option 2:
- [Frippery Bottom Panel](https://extensions.gnome.org/extension/3/bottom-panel/)

