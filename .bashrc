unset HISTFILE

# Automatically start sway on TTY1 if it isn't already running.
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	# Pinebook Pro specific
	export PAN_MESA_DEBUG="gl3"

	# systemd-inhibit is used to temporarily disable the power button, as it's right above backspace and is prone to accidental presses.
	exec systemd-inhibit --what=handle-power-key sway
fi
