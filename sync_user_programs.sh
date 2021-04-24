#!/bin/sh

# Install/update Neovim plugins
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugUpdate!" -c "PlugClean" -c "qa"

# Setup Flatpak repos
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --user --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# Install Flatpak apps
flatpak install --user flathub-beta org.gimp.GIMP
flatpak install --user flathub com.rawtherapee.RawTherapee
flatpak install --user flathub com.github.tchx84.Flatseal
flatpak install --user flathub org.libreoffice.LibreOffice
flatpak install --user flathub io.github.Qalculate

# Workaround for https://gitlab.com/librewolf-community/browser/linux/-/issues/128
curl https://gitlab.com/librewolf-community/browser/linux/uploads/5c8ea25604b07904ff388be85a33b173/LibreWolf-87.0-1.aarch64.flatpak -O
flatpak install --user LibreWolf-*.flatpak
rm LibreWolf-*.flatpak

# Replace Librewolf base config (due to it being far too restrictive)
cp -f ~/dotfiles/.config/librewolf/mozilla.cfg ~/.local/share/flatpak/app/io.gitlab.librewolf-community/current/active/files/share/librewolf/librewolf.cfg

# Configure Librewolf profiles
echo ~/.var/app/io.gitlab.librewolf-community/.librewolf/*.default* | xargs -n 1 cp -f ~/dotfiles/.config/librewolf/user.js

# Update Flatpak apps
flatpak --user update

# Update Fish completions
fish -c fish_update_completions

# Clean unused files from ~/.cache, ~/.config, and ~/.ssh
find ~/.cache/* -atime +21 -mtime +90 -print -delete
find ~/.config/* -atime +90 -not -type l -print -delete
find ~/.ssh/known_hosts -atime +90 -print -delete

# Remove junk/unused files from ~/.local and ~/.ssh
find ~/.local/* -not -path "*/share*" -print -delete
find ~/.ssh/* -not -name "id_*" -not -name "known_hosts" -print -delete

# Remove empty files/folders and broken symlinks from ~/.config
find ~/.config -empty -print -delete
find ~/.config -xtype l -print -delete

# Remove ".old" files
find ~/.* -name "*.old" -print -delete

# Prompt to remove known_hosts and/or ssh keys if they're outdated
find ~/.ssh/* -mtime +365 -exec rm -ir {} \;

# Prompt to remove old files from ~/Downloads and ~/.config
find ~/Downloads -mtime +21 -exec rm -ir {} \;
find ~/.config/* -mtime +180 -not -type l -exec rm -ir {} \;
