#!/bin/sh

# Create user directories
mkdir -p ~/.cache ~/.config/pulse ~/.ssh ~/Downloads ~/Desktop

# Setup ~/Documents folder
ln -s ~/Templates ~/Documents
ln -s ~/Music ~/Documents
ln -s ~/Pictures ~/Documents
ln -s ~/Videos ~/Documents

# Setup ~/Desktop folder (default working directory for new terminals)
ln -s ~/Documents ~/Desktop
ln -s ~/Downloads ~/Desktop
ln -s ~/Public ~/Desktop/Projects
ln -s ~/dotfiles ~/Desktop

# Create symlinks to config files
ln -s ~/dotfiles/.config/pulse/* ~/.config/pulse
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh

# Configure Firefox
firefox -CreateProfile $USER
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/user.js
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/search.json.mozlz4

# Configure Bash
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bash_profile
rm ~/.bash_logout

# Configure Git
git config --global color.ui auto
