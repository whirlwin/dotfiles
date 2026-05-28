#!/usr/bin/env bash
#
# Bootstrap a macOS workstation. Installs Homebrew + mise, clones this repo,
# then hands off to mise which manages tools (mise.toml), apps (Brewfile) and
# the setup steps (mise-tasks/). Re-running is safe.
#
#   curl -fsSL https://raw.githubusercontent.com/whirlwin/dotfiles/master/init-macos.sh | bash
#
set -euo pipefail

DOTFILES_DIR="$HOME/git/github.com/whirlwin/dotfiles"

echo "[INFO] Bootstrapping macOS workstation ⚙️"

# 1. Homebrew (also provides git + mise)
if ! command -v brew >/dev/null 2>&1; then
  echo "[INFO] Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null || /usr/local/bin/brew shellenv)"

# 2. mise — runtime & tool version manager
if ! command -v mise >/dev/null 2>&1; then
  echo "[INFO] Installing mise"
  brew install mise
fi

# 3. Clone (or update) this repo. HTTPS, because the SSH key is generated
#    later by `mise run setup` and isn't on GitHub yet.
if [ ! -d "$DOTFILES_DIR/.git" ]; then
  echo "[INFO] Cloning dotfiles into $DOTFILES_DIR"
  mkdir -p "$(dirname "$DOTFILES_DIR")"
  git clone https://github.com/whirlwin/dotfiles.git "$DOTFILES_DIR"
else
  echo "[INFO] Updating existing dotfiles clone"
  git -C "$DOTFILES_DIR" pull --ff-only || true
fi

# 4. Install tools and run the full, ordered setup
cd "$DOTFILES_DIR"
mise trust
mise run setup
