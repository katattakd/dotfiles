#!/bin/sh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "PlugClean" -c "qa"

# Update qalc exchange rates
qalc -e 0

# Setup Flatpak repos
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --user --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# Install Flatpak apps
flatpak install --user flathub com.github.tchx84.Flatseal
flatpak install --user flathub org.libreoffice.LibreOffice
flatpak install --user flathub-beta org.gimp.GIMP
flatpak install --user flathub com.rawtherapee.RawTherapee

# Update Flatpak apps
flatpak --user update

# Update Fish completions
fish -c fish_update_completions

# Clean unused files from ~/.cache, ~/.config, and ~/.ssh
find ~/.cache/* -atime +21 -mtime +90 -print -delete
find ~/.config/* -atime +90 -not -type l -print -delete
find ~/.ssh/known_hosts -atime +90 -print -delete

# Remove junk/unused files from ~/.local, ~/.mozilla and ~/.ssh
find ~/.local/* -not -path "*/share*" -print -delete
find ~/.mozilla/* -not -path "*/firefox" -not -path "*/firefox/installs.ini" -not -path "*/firefox/profiles.ini" -not -path "*/firefox/*kat*" -print -delete
find ~/.ssh/* -not -name "id_*" -not -name "known_hosts" -print -delete

# Remove empty files/folders and broken symlinks from ~/.config and ~/.local
find ~/.config -empty -print -delete
find ~/.local -empty -not -path "*/share/flatpak/*" -print -delete
find ~/.config -xtype l -print -delete
find ~/.local -xtype l -not -path "*/share/flatpak/*" -print -delete

# Remove ".old" files
find ~/.* -name "*.old" -print -delete

# Remove bash-specific files
find ~/.bash* -print -delete

# Prompt to remove known_hosts and/or ssh keys if they're outdated
find ~/.ssh/* -mtime +365 -exec rm -ir {} \;

# Prompt to remove old files from ~/Downloads and ~/.config
find ~/Downloads -mtime +21 -exec rm -ir {} \;
find ~/.config/* -mtime +180 -not -type l -exec rm -ir {} \;
