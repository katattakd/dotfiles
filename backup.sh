#!/bin/sh
rsync -amLR --delete -v ~/.gitconfig ~/.local/share/fish/fish_history ~/.config/nvim/spell ~/Desktop --exclude "dotfiles" $@
