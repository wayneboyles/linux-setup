#!/bin/bash

# Powerline Fonts
cd /tmp && git clone https://github.com/powerline/fonts.git --depth=1 -q > /dev/null 2>&1
/tmp/fonts/install.sh > /dev/null 2>&1
rm -rf /tmp/fonts

# VIM Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs --silent https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vimrc --silent https://raw.githubusercontent.com/wayneboyles/linux-setup/main/resources/.vimrc
vim -E -s -u ~/.vimrc +PlugInstall +qall

# Change the shell to ZSH
chsh -s /usr/bin/zsh root

# Oh-My-ZSH
wget -q https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh
chmod o+x install.sh
./install.sh > /dev/null 2>&1
rm -f install.sh

# ZSH Configuration
wget -q https://raw.githubusercontent.com/wayneboyles/linux-setup/main/resources/.zshrc
mv .zshrc ~/.zshrc > /dev/null 2>&1

# Enable system services
systemctl enable chrony > /dev/null 2>&1
systemctl restart chrony > /dev/null 2>&1