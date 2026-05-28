# init
This repository contains information on what is needed in order to set up my
workbench.

# Setup

## macOS

```shell
curl -fsSL https://raw.githubusercontent.com/whirlwin/dotfiles/master/init-macos.sh | bash
```

`init-macos.sh` installs Homebrew + [mise](https://mise.jdx.dev), clones this
repo, then runs `mise run setup`. From then on the workstation is managed
declaratively:

- **`mise.toml`** — runtimes (java, node, rust) and CLI tools (jq, yq, ripgrep,
  fzf, k9s, kind, kubectx, helm, starship, neovim, dive, difftastic, lima).
  Install/update with `mise install`.
- **`Brewfile`** — GUI apps, fonts and system/daemon tools mise can't manage.
  Install with `brew bundle`.
- **`mise-tasks/`** — the individual, re-runnable setup steps. List them with
  `mise tasks ls`; run the whole thing with `mise run setup`.


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

# TODO
- Add prompts before each install. E.g. before all `brew install` commands to improve debugability
