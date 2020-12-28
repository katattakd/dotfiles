#!/bin/sh

# Maintance task: Remove unused cache files
find ~/.cache/ -atime +28 -print -delete

# Maintance task: Remove old logs
sudo journalctl --vacuum-time=2weeks

# Update installed packages
pamac upgrade -a --devel

# Update config files
sudo -E DIFFPROG='nvim -d' pacdiff

# Remove orphaned packages
pamac remove -o

# Clean cache
pamac clean -k 3
pamac clean --build-files -k 0
pamac clean --uninstalled -k 0

# Update Fish completions
fish -c fish_update_completions

# Update manual page cache
sudo mandb

# Update Vim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!"

# Update rustup toolchains
rustup update

echo "Please reboot for changes to take effect."
