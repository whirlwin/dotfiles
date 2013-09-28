# Init

This repository contains information on what is needed in order to set up my
workbench.

## Core

### Gnome Shell extensions

- [Static workspaces](https://extensions.gnome.org/extension/484/workspace-grid/)

### Guake

Disable tab path name:
>     gconftool-2 --set /apps/guake/general/use_vte_titles --type boolean false

### xclip
Add the following to .zshrc:
>     alias 'xclip'='xclip -selection clipboard'

## Editors

### Vim plugins

- [CoffeeScript support](http://www.vim.org/scripts/script.php?script_id=3590)
- [Jade support](http://www.vim.org/scripts/script.php?script_id=3192)
- [Stylus support](http://www.vim.org/scripts/script.php?script_id=3513)
