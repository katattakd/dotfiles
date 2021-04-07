unset HISTFILE

# Automatically start sway on TTY1 if it isn't already running.
if [[ $(tty) = "/dev/tty1" ]]; then
	clear
	# systemd-inhibit is used to prevent accident power button presses during a graphical session, as pressing the power button will immediately shut down the computer without warning.
	systemd-inhibit --what=handle-power-key --why="Prevent accidental power button presses" sway > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		systemctl poweroff
	fi
fi
