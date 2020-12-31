#!/bin/sh

# Create user directories
mkdir -p ~/.cache ~/.config/pulse ~/.ssh ~/Downloads ~/Desktop

# Setup ~/Desktop folder (default working directory for new terminals)
ln -s ~/Downloads ~/Desktop
ln -s ~/.config ~/Desktop
ln -s ~/dotfiles ~/Desktop/

# Create symlinks to config files
ln -s ~/dotfiles/.config/pulse/* ~/.config/pulse
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh

# Configure Firefox
echo ~/.mozilla/firefox/*.default* | xargs -n 1 ln -s ~/dotfiles/.mozilla/user.js

# Configure Bash
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bash_profile
rm ~/.bash_logout

# Configure Git
git config --global color.ui auto
