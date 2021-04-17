#!/bin/sh

# Install/update config files
ln -s ~/dotfiles/.config/* ~/.config

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "PlugClean" -c "qa"

# Update Fish completions
fish -c fish_update_completions
