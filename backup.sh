#!/bin/sh
rsync -avmR --delete --delete-excluded ~/./ ~/./.local/share/fish/fish_history --include ".gitconfig" --exclude ".*" --exclude "checkout" --exclude "packages.txt" $@
