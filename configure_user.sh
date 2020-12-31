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

# Prevent Bash/Ash from writing history to disk
ln -sf /dev/null ~/.ash_history
ln -sf /dev/null ~/.bash_history

# Configure Git
git config --global color.ui auto
