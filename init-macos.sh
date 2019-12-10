echo "[INFO]: Installing stuff...⚙️️"

set -e

echo "[INFO]: Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install neovim
cp -r .nvim ~
echo "[INFO]: Copied neovim config ✅"

mkdir -p ~/git/open-source
echo "[INFO]: Created directories: ~/git ~git/open-source ✅"

