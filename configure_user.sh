#!/bin/sh

# Create user directories
mkdir -p ~/.cache ~/.config/pulse ~/.ssh ~/Downloads ~/Desktop

# Setup ~/Documents folder
ln -sT ~/Templates ~/Documents
ln -sT ~/Music ~/Documents
ln -sT ~/Pictures ~/Documents
ln -sT ~/Videos ~/Documents

# Setup ~/Desktop folder (default working directory for new terminals)
ln -sT ~/Documents ~/Desktop
ln -sT ~/Downloads ~/Desktop
ln -sT ~/Public ~/Desktop/Projects
ln -sT ~/dotfiles ~/Desktop

# Create symlinks to config files
ln -sT ~/dotfiles/.config/pulse/* ~/.config/pulse
ln -sT ~/dotfiles/.config/* ~/.config
ln -sT ~/dotfiles/.*rc ~/
ln -sT ~/dotfiles/.ssh/* ~/.ssh

# Configure Firefox
firefox -CreateProfile $USER
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -sT ~/dotfiles/.mozilla/user.js
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -sT ~/dotfiles/.mozilla/search.json.mozlz4

# Configure Bash
ln -sTf ~/dotfiles/.bashrc ~/.bashrc
ln -sTf ~/dotfiles/.bashrc ~/.bash_profile
rm ~/.bash_logout

# Configure Git
git config --global color.ui auto
