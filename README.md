# init
This repository contains information on what is needed in order to set up my
workbench.

# Setup

## macOS

```shell
curl https://raw.githubusercontent.com/whirlwin/dotfiles/master/init-macos.sh | bash
```


## Linux

```shell
./init-linux.sh
```

# Misc
1. Make Guake tab names suck less: `gconftool-2 --set /apps/guake/general/use_vte_titles --type boolean false`
2. Install the following IntelliJ IDEA plugins:
- Vimium
- GitHub Copilot
- Python
- Go
