unset HISTFILE

if [[ $(tty) = "/dev/tty1" ]]; then
	clear
	systemd-inhibit --what=handle-power-key --why="Prevent accidental power button presses" sway > /dev/null 2>&1
	systemctl poweroff # Workaround for https://github.com/systemd/systemd/issues/8598
	exit
fi
