echo "[INFO]: Installing stuff...⚙️️"

if [ ! -f ~/.ssh/id_ed25519 ]; then
  echo "[INFO]: Setting up SSH keypair 🔑"
  ssh-keygen -o -a 100 -t ed25519
fi

echo "[INFO]: Setting Git info"
git config --global user.name "Øyvind Ødegård"

echo "[INFO]: Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting

echo "[INFO]: Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "[INFO]: Setting up neovim"
brew install neovim
cp -r .nvim ~

echo "[INFO]: Installing sdkman"
curl -s "https://get.sdkman.io" | bash

echo "[INFO]: Setting up Vagrant"
brew cask install vagrant

echo "[INFO]: Setting up Docker"
brew install docker docker-machine
docker-machine create --driver virtualbox default
docker-machine env default
eval $(docker-machine env default)

echo "[INFO]: Creating directories: ~/git ~git/open-source"
mkdir -p ~/git/open-source

echo "[INFO]: Copying .profile"
cp .profile ~/

echo "[INFO]: Setting up misc"
brew install watch
brew install htop

echo "[INFO]: Downloading iterm2 zip. Install it manually"
(cd ~/Downloads && curl -O https://iterm2.com/downloads/stable/latest)

