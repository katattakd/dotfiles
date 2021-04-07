#!/bin/sh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "PlugClean" -c "qa"

# Install/update Rustup toolchains
export RUSTUP_HOME="$HOME/.local/share/rustup"
rustup toolchain install stable
rustup component add clippy

# Setup Flatpak repos
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --user --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# Install Flatpak apps
flatpak install --user flathub-beta org.gimp.GIMP
flatpak install --user flathub com.rawtherapee.RawTherapee
flatpak install --user flathub com.github.tchx84.Flatseal
flatpak install --user flathub org.libreoffice.LibreOffice
flatpak install --user flathub io.github.Qalculate

# Update Flatpak apps
flatpak --user update

# Update Fish completions
fish -c fish_update_completions

# Clean unused files from ~/.cache, ~/.config, and ~/.ssh
find ~/.cache/* -atime +21 -print -delete
find ~/.config/* -atime +90 -not -type l -print -delete
find ~/.ssh/known_hosts -atime +90 -print -delete

# Remove junk/unused files from ~/.local and ~/.ssh
find ~/.local/* -not -path "*/share*" -print -delete
find ~/.ssh/* -not -name "id_*" -not -type l -not -name "known_hosts" -print -delete

# Remove empty files/folders and broken symlinks from ~/.config and ~/.ssh
find ~/.config ~/.ssh -empty -not -name "*lock*" -not -name ".stamp" -print -delete
find ~/.config ~/.ssh -xtype l -not -name "*lock*" -print -delete

# Remove ".old" files
find ~/.* -name "*.old" -print -delete

# Prompt to remove known_hosts and/or ssh keys if they're outdated
find ~/.ssh/* -mtime +365 -not -type l -exec rm -ir {} \;

# Prompt to remove old files from ~/Downloads
find ~/Downloads -mtime +21 -exec rm -ir {} \;

