#!/bin/sh

# Create new user directories
mkdir -p ~/Projects

# Create symlinks to config files
cp ~/dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs
rm -r ~/.config/fish
ln -sf ~/dotfiles/.config/* ~/.config

# Cleanup old files from Bash
rm ~/.bash*
