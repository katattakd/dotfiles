#!/bin/sh
rsync -avmR --delete --delete-excluded ~/./ ~/./.local/share/fish/fish_history --exclude ".*/" --exclude "checkout" --exclude "dotfiles" --exclude ".identity" --exclude "packages.txt" $@
