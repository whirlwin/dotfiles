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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# opencode
export PATH=$HOME/.opencode/bin:$PATH

# kubectl wrapper for the k3s cluster on noravind-hallway-monitor.
# Cluster API isn't reachable from this laptop, so each command tunnels over SSH.
# Usage: knvh get nodes / knvh -n kube-system get pods
knvh() {
  ssh noravind-hallway-monitor "KUBECONFIG=\$HOME/.kube/config kubectl $*"
}
