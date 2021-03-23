#!/bin/sh

# Create user directories
mkdir -p ~/.config ~/.cache ~/.ssh ~/.local/share/mozilla ~/Templates ~/Music ~/Pictures ~/Videos ~/Public ~/Downloads ~/Documents ~/Desktop

# Setup ~/Documents folder
ln -sT ~/Templates ~/Documents/Templates
ln -sT ~/Music ~/Documents/Music
ln -sT ~/Pictures ~/Documents/Pictures
ln -sT ~/Videos ~/Documents/Videos

# Setup ~/Desktop folder (default working directory for new terminals)
ln -sT ~/Documents ~/Desktop/Documents
ln -sT ~/Downloads ~/Desktop/Downloads
ln -sT ~/Public ~/Desktop/Projects
ln -sT ~/dotfiles ~/Desktop/dotfiles

# Create symlinks to config files
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh

# Configure Firefox
ln -s ~/.local/share/mozilla ~/.mozilla
firefox -CreateProfile $USER
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/user.js
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/search.json.mozlz4

# Configure Bash
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bash_profile
rm ~/.bash_logout

# Configure Git
git config --global color.ui auto

