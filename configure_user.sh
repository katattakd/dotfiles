#!/bin/sh

# Create user directories
mkdir -p ~/.config ~/Downloads ~/Projects ~/Documents ~/Music ~/Pictures ~/Videos

# Create symlinks to config files
cp ~/dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s ~/dotfiles/.config/* ~/.config

# Configure Flatpak apps
mkdir -p ~/.var/app/io.github.Qalculate/config/qalculate
ln -s ~/dotfiles/.config/var/qalculate ~/.var/app/io.github.Qalculate/config/qalculate

# Configure user account
sudo homectl update $USER --shell=/usr/bin/fish --nice=-2
