#!/bin/sh

# Install/update config files
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "PlugClean" -c "qa"

# Install/update Rustup toolchains
rustup toolchain install stable
rustup toolchain install beta
rustup toolchain install nightly
rustup component add clippy

# Fix Fish configuration
fish -c "set -eU CARGO_HOME"
fish -c "set -eU RUSTUP_HOME"

# Update Fish completions
fish -c fish_update_completions
