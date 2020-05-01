#!/bin/sh
sudo adduser katattakd input
sudo adduser katattakd video
sudo apk add sway xkeyboard-config

sudo apk add swaylock swayidle termite j4-dmenu-desktop

sudo apk add zsh zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search fzf fzf-zsh-completion

sudo apk add neovim curl
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.z* ~

echo "Please reboot for changes to take effect."
