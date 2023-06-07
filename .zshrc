[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

plugins=(archlinux autojump colorize git mvn node)

export ZSH_THEME="robbyrussell"
export ZSH=~/.oh-my-zsh

source ~/.profile
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

export SDKMAN_DIR="/Users/oyvind.odegard/.sdkman"
[[ -s "/Users/oyvind.odegard/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/oyvind.odegard/.sdkman/bin/sdkman-init.sh"

export PATH="/opt/homebrew/bin:$PATH"
