if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	export MANPATH="/usr/share/man"
	source ~/.nix-profile/etc/profile.d/*.sh
	XDG_RUNTIME_DIR=/tmp XKB_DEFAULT_LAYOUT=us exec sway
	exit
fi
unset HISTFILE
