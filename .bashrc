unset HISTFILE

if [[ $(tty) = "/dev/tty1" ]]; then
	clear
	systemd-inhibit --what=handle-power-key --why="Prevent accidental power button presses" sway > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		systemctl poweroff
		exit
	fi
fi
