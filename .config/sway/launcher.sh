#!/bin/bash
cmd=$(SHELL=$HOME/.config/sway/j4-fakeshell.sh j4-dmenu-desktop --dmenu='fzf --layout=reverse' --no-generic --term=alacritty | sed -n 2p)
[[ -n "$cmd" ]] && swaymsg exec "$cmd"
