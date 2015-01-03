sudo su

GOOGLE_CHROME="google-chrome.rpm"

# Make sure the system is up to date
yum update -y

# Download Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -O $GOOGLE_CHROME

yum install -y git vim zsh xclip guake alacarte maven nodejs mongodb mongodb-server $GOOGLE_CHROME

# Disable long names for terminal tabs
gconftool-2 --set /apps/guake/general/use_vte_titles --type boolean false

# Download and install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
chsh -s /usr/bin/zsh whirlwin

# Import .profile
wget https://raw2.github.com/whirlwin/init/master/.profile -O ~/.profile
echo "source ~/.profile" >> ~/.zshrc

# Import .gitignore_gloal
wget https://raw.githubusercontent.com/whirlwin/init/master/.gitignore_global -O ~/.gitignore_global

# Initalize Vim
wget https://raw2.github.com/whirlwin/init/master/editors/.vimrc -O ~/.vimrc

# Create directory structures
mkdir ~/Projects

# Remove installation files
rm $GOOGLE_CHROME

# Log out in order to propagate changes
gnome-session-quit --no-prompt
