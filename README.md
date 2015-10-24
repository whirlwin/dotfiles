# Init
This repository contains information on what is needed in order to set up my
workbench.

## Basic programs
    git vim wget xclip zsh

## Shell
1. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
2. Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
3. Enable Oh My Zsh plugins: `plugins=(git mvn colorize node zsh-syntax-highlighting)` in `~/.zshrc`

## Configure Git
1. Configure global gitignore: `wget https://raw.githubusercontent.com/whirlwin/init/master/.gitignore_global -O ~/.gitignore_global`
2. Configure username: `git config user.name whirlwin`
3. Configure email: `git config user.email <email address>`

# Configure Vim
1. Configure .vimrc: `wget https://raw.github.com/whirlwin/init/master/editors/.vimrc -O ~/.vimrc`
2. Install [Vundle](https://github.com/VundleVim/Vundle.vim)
3. Install plugins: `vim +PluginInstall +qall`

## Gnome Shell extensions
Option 1:
- [Static workspaces](https://extensions.gnome.org/extension/484/workspace-grid/)

Option 2:
- [Frippery Bottom Panel](https://extensions.gnome.org/extension/3/bottom-panel/)

