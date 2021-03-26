unset HISTFILE

# Automatically start sway on TTY1 if it isn't already running.
if [[ -z $DISPLAY ]] && [[ $(tty) != /dev/tty6 ]]; then
	# Pinebook Pro specific GPU fixes
	export PAN_MESA_DEBUG="gl3"

	# systemd-inhibit is used to temporarily disable the power button, as it's right above backspace and is prone to accidental presses. This is a Pinebook Pro specific fix that may benefit other laptops
	exec systemd-inhibit --what=handle-power-key --why="Prevent accidental power key presses" sway
fi
