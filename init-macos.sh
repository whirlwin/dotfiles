echo "[INFO]: Installing stuff...⚙️️"

set -e

echo "[INFO]: Setting up SSH keypair"
ssh-keygen -o -a 100 -t ed25519

echo "[INFO]: Setting Git info"
git config --global user.name "Øyvind Ødegård"

echo "[INFO]: Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting

echo "[INFO]: Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install neovim
cp -r .nvim ~
echo "[INFO]: Copied neovim config ✅"

echo "[INFO]: Installing sdkman"
curl -s "https://get.sdkman.io" | bash

mkdir -p ~/git/open-source
echo "[INFO]: Created directories: ~/git ~git/open-source ✅"

echo "[INFO]: Downloading iterm2 zip. Install it manually"
(cd target/path && curl -O https://iterm2.com/downloads/stable/latest)
