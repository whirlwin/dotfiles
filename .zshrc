export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

plugins=(archlinux autojump colorize git mvn node)

export ZSH_THEME="robbyrussell"
export ZSH=~/.oh-my-zsh

source ~/.profile
source $(/opt/homebrew/bin/brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# mise — runtime & tool version manager (replaces SDKMAN); puts java, node,
# rust and the mise-managed CLI tools on PATH.
eval "$(mise activate zsh)"

