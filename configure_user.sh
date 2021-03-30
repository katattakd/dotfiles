#!/bin/sh

# Create user directories
mkdir -p ~/.config ~/.cache ~/.ssh ~/Templates ~/Music ~/Pictures ~/Videos ~/Public ~/Downloads ~/Documents ~/Desktop

# Setup ~/Documents folder
ln -sT ~/Templates ~/Documents/Templates

# Setup ~/Desktop folder (default working directory for new terminals)
ln -sT ~/Documents ~/Desktop/Documents
ln -sT ~/Downloads ~/Desktop/Downloads
ln -sT ~/Music ~/Desktop/Music
ln -sT ~/Pictures ~/Desktop/Pictures
ln -sT ~/Public ~/Desktop/Projects
ln -sT ~/Videos ~/Desktop/Videos
ln -sT ~/dotfiles ~/Desktop/dotfiles

# Configure Bash
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bash_profile
ln -s ~/dotfiles/.hushlogin ~/.hushlogin
rm ~/.bash_logout

# Create symlinks to config files
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh

