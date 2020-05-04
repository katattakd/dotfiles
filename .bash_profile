if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	XDG_RUNTIME_DIR=/tmp XKB_DEFAULT_LAYOUT=us exec sway
	exit
fi
unset HISTFILE
