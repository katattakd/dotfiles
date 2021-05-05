#!/bin/sh

# Setup new XDG dirs
mkdir -p ~/Projects
cp ~/dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs

# Create symlinks to config files
rm -r ~/.config/fish
ln -sf ~/dotfiles/.config/* ~/.config

# Cleanup old files from Bash
rm ~/.bash*
