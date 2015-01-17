# Make sure the system is up to date
yum update -y

# Configure git
yum install -y git
wget https://raw.githubusercontent.com/whirlwin/init/master/.gitignore_global -O ~/.gitignore_global
git config core.editor vim

# Configure Google Chrome
GOOGLE_CHROME="google-chrome.rpm"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -O $GOOGLE_CHROME
yum install -y $GOOGLE_CHROME
rm $GOOGLE_CHROME

# Misc
yum install -y alacarte maven nodejs mongodb mongodb-server
wget https://raw.github.com/whirlwin/init/master/.profile -O ~/.profile
mkdir ~/Projects

# Configure Guake
yum install -y guake
gconftool-2 --set /apps/guake/general/use_vte_titles --type boolean false

# Configure zsh and oh-my-zsh
yum install -y zsh
curl -L http://install.ohmyz.sh | sh
chsh -s /usr/bin/zsh whirlwin
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

# Configure xclip
yum install -y xclip
echo "alias xclip=set selection -c" >> ~/.zshrc

# Configure Vim
yum install -y vim
wget https://raw.github.com/whirlwin/init/master/editors/.vimrc -O ~/.vimrc

# Log out in order to propagate changes
gnome-session-quit --no-prompt
