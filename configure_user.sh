#!/bin/sh

# Create user directories
mkdir -p ~/.config ~/.cache ~/Desktop ~/Downloads ~/Projects ~/Documents ~/Music ~/Pictures ~/Videos

# Configure XDG user dirs
cp ~/dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs

# Setup ~/Desktop folder (default working directory for new terminals)
ln -sT ~/Documents ~/Desktop/Documents
ln -sT ~/Downloads ~/Desktop/Downloads
ln -sT ~/Music ~/Desktop/Music
ln -sT ~/Pictures ~/Desktop/Pictures
ln -sT ~/Projects ~/Desktop/Projects
ln -sT ~/Videos ~/Desktop/Videos
ln -sT ~/dotfiles ~/Desktop/dotfiles

# Create symlinks to config files
ln -s ~/dotfiles/.config/* ~/.config

# Configure Flatpak apps
mkdir -p ~/.var/app/io.github.Qalculate/config/qalculate
ln -s ~/dotfiles/.config/var/qalculate ~/.var/app/io.github.Qalculate/config/qalculate

# Configure user account
sudo homectl update $USER --shell=/usr/bin/fish --nice=-2
