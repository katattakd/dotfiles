#!/bin/sh

# Create user directories
mkdir -p ~/.config ~/.cache ~/.ssh ~/.local/share/mozilla ~/Templates ~/Music ~/Pictures ~/Videos ~/Public ~/Downloads ~/Documents ~/Desktop

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

# Create symlinks to config files
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/.local/share/mozilla ~/.mozilla

# Configure Bash
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bash_profile
rm ~/.bash_logout ~/.bash_history

# Configure Git
git config --global color.ui auto

