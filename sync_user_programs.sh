#!/bin/sh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "PlugClean" -c "qa"

# Install/update Rustup toolchains
rustup toolchain install stable
rustup toolchain install beta
rustup toolchain install nightly
rustup component add clippy

# Update Fish completions
fish -c fish_update_completions

# Clean old files from ~/.cache
find ~/.cache -atime +21 -print -delete

# Remove empty files & folders from ~/.cache and ~/.config
find ~/.cache ~/.config -empty -print -delete

# Remove empty files from ~/.local
find ~/.local -empty -not -type d -print -delete

# Remove broken symlinks which aren't named "lock" from hidden directories
find ~/.* -xtype l -not -name lock -print -delete

# Prompt to remove known_hosts and/or ssh keys if they're outdated
find ~/.ssh/known_hosts ~/.ssh/id_* -mtime +365 -exec rm -ir {} \;

# Prompt to remove old files from ~/Downloads
find ~/Downloads -mtime +28 -exec rm -ir {} \;

# TODO: Prompt to remove old config files
# find ~/.config -maxdepth 1 -mtime +28 -not -type l
