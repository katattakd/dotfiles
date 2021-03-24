#!/bin/sh
rsync -amLR --delete -v ~/.local/share/fish/fish_history ~/.config/nvim/spell ~/.ssh/id_* ~/.gitconfig ~/Desktop --exclude "dotfiles" $@
