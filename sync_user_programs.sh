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

# Clean unused files from ~/.cache, ~/.config, and ~/.ssh
find ~/.cache -atime +21 -print -delete
find ~/.config -atime +365 -not -type l -print -delete
find ~/.ssh/known_hosts -atime +365 -print -delete

# Remove empty files & folders from ~/.cache, ~/.config, and ~/.local
find ~/.cache ~/.config ~/.local -empty -print -delete

# Remove broken symlinks which aren't lock files from hidden directories
find ~/.* -xtype l -not -name "*lock*" -print -delete

# Prompt to remove known_hosts and/or ssh keys if they're outdated
find ~/.ssh/known_hosts ~/.ssh/id_* -mtime +365 -exec rm -ir {} \;

# Prompt to remove old files from ~/Downloads
find ~/Downloads -mtime +28 -exec rm -ir {} \;

