#!/usr/bin/env bash
echo "[INFO] Installing stuff...⚙️️"

if [ ! -f ~/.ssh/id_ed25519 ]; then
  echo "[INFO] Setting up SSH keypair"
  ssh-keygen -o -a 100 -t ed25519
fi

echo "[INFO] Setting Git info"
echo "[INFO] Type email address to be used with git:"
read git_email
git config --global user.email "$git_email"
git config --global core.editor "nvim"
git config --global user.name "Øyvind Ødegård"
mkdir -p ~/git/github.com

echo "[INFO] Installing Homebrew"
curl -o install.sh -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh
bash install.sh

echo "[INFO] Installing shell stuff"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting
curl -o ~/.zshrc https://raw.githubusercontent.com/whirlwin/dotfiles/master/.zshrc
source ~/.zshrc
curl -o ~/.profile https://raw.githubusercontent.com/whirlwin/dotfiles/master/.profile
source ~/.profile

echo "[INFO] Setting up editors"
brew install neovim
mkdir -p ~/.nvim
curl -o ~/.nvim/init.vim https://raw.githubusercontent.com/whirlwin/dotfiles/master/.config/nvim/init.vim 
brew install visual-studio-code

echo "[INFO] Installing sdkman"
curl -s "https://get.sdkman.io" | bash

echo "[INFO] Setting up virtualization"
brew install --cask vagrant
brew install --cask virtualbox

echo "[INFO] Setting up Docker"
brew install docker docker-machine
docker-machine create --driver virtualbox default
docker-machine env default
eval $(docker-machine env default)
docker-machine start

echo "[INFO] Setting up helm"
brew install helm
helm repo add stable https://charts.helm.sh/stable

echo "[INFO] Setting up misc"
brew install watch
brew install fzf
brew install telnet
brew install htop
brew install dive
brew install wget
brew install tig
brew install kind
brew install kubectx
brew install k9s
brew install jq
brew install yq
brew install podman
brew install podman-desktop
brew install lima
brew install autojump
brew install fonts-powerline
brew install font-hack-nerd-font
brew install --cask google-chrome
brew install --cask alfred
brew install --cask iterm2
brew install --cask intellij-idea
brew install --cask spotify
brew install --cask slack
brew install --cask spectacle

echo "[INFO] Downloading user config files"
curl -o ~/.editorconfig https://github.com/whirlwin/dotfiles/blob/master/.editorconfig
curl -o ~/.gitignore https://github.com/whirlwin/dotfiles/blob/master/.gitignore
curl -o ~/Downloads/iterm2-profile.json https://github.com/whirlwin/dotfiles/blob/master/iterm2-profile.json
curl -o ~/Downloads/iterm2.itermkeymap https://github.com/whirlwin/dotfiles/blob/master/iterm2.itermkeymap

echo "[INFO] Init script finished!"
echo "[INFO] Follow the below instructions to configure misc stuff:"
echo "[INFO] • Add the following SSH public key to github.com: $(cat ~/.ssh/id_ed25519.pub)"
echo "[INFO] • Silent system bell: System Preferences -> Sound Effects -> Alert volume = 0"
echo "[INFO] • Tap to click: System Preferences -> Trackpad -> Tap to click = enabled"
echo "[INFO] • iTerm2 profile: Open iTerm2 -> Preferences -> Profiles -> Other Actions -> Import JSON Profiles: Select the profile from ~/Downloads"
echo "[INFO] • iTerm2 keymap: Open iTerm2 -> Preferences -> Keys -> ⚙ Presets... -> Import...: Select the keymap from ~/Downloads"
echo "[INFO] • System Settings -> Change profile picture"
echo "[INFO] • System Preferences -> Trackpad -> Scroll & Zoom -> Scroll direction: Natural = disabled"
