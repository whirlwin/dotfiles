GOOGLE_CHROME="google-chrome.rpm"

# Make sure the system is up to date
sudo yum update

# Download Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -O $GOOGLE_CHROME

sudo yum install -y git vim zsh xclip maven nodejs $GOOGLE_CHROME

# Download and install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo chsh -s /usr/bin/zsh whirlwin

# Import .profile
wget https://raw2.github.com/whirlwin/init/master/.profile -O ~/.profile
echo "source ~/.profile" >> ~/.zshrc

# Initalize Vim
wget https://raw2.github.com/whirlwin/init/master/editors/.vimrc -O ~/.vimrc

# Create directory structures
mkdir ~/Projects

# Remove installation files
rm $GOOGLE_CHROME

# Log out in order to propagate changes
gnome-session-quit --no-prompt
