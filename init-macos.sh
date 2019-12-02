echo "[INFO]: Installing stuff...⚙️️"

set -e

brew install neovim
cp -r .nvim ~
echo "[INFO]: Copied neovim config ✅"

mkdir -p ~/git/open-source
echo "[INFO]: Created directories: ~/git ~git/open-source ✅"

