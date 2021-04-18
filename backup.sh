#!/bin/sh
rsync -am --delete -v ~ ~/.local/share/fish/fish_history --exclude ".cache" --exclude ".config" --exclude ".local" --exclude ".mozilla" --exclude ".ssh" --exclude ".var" --exclude "dotfiles" --exclude ".identity" --exclude "packages.txt" $@
