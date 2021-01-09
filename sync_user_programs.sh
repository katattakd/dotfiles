#!/bin/sh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "qa"

# Install/update Rustup toolchains
rustup toolchain install stable
rustup toolchain install beta
rustup toolchain install nightly
rustup component add clippy rust-src llvm-tools-preview

# Update Fish completions
fish -c fish_update_completions

# Clean old files from ~/.cache
find ~/.cache/ -atime +28 -print -delete
