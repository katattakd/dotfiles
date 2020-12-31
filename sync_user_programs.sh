#!/bin/sh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "qa"

# Install/update Rustup toolchains
rustup toolchain install stable
rustup toolchain install beta
rustup toolchain install nightly

# Update Fish completions
fish -c fish_update_completions

# Clean cache
find ~/.cache/ -atime +28 -print -delete
