#!/bin/sh
sudo adduser katattakd input
sudo adduser katattakd video
sudo adduser katattakd audio
sudo apk add sway xkeyboard-config

sudo apk add swaylock termite j4-dmenu-desktop

sudo apk add zsh zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search fzf fzf-zsh-completion

sudo apk add neovim curl
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh setup.sh

sudo rc-update del sshd
sudo apk add ufw ufw-openrc
sudo ufw enable
sudo rc-update add ufw

sudo apk add iwd
sudo rc-update del wpa_supplicant
sudo rc-update add iwd

sudo apk add firefox imv mpv
sudo apk add ffmpeg imagemaigck
sudo apk add pulseaudio pulseaudio-alsa alsa-plugins-pulse
sudo apk add pulsemixer alsa-utils

sudo apk add coreutils util-linux

echo "Please reboot for changes to take effect."
