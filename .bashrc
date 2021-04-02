unset HISTFILE

# Automatically start sway on TTY1 if it isn't already running.
if [[ $(tty) = "/dev/tty1" ]]; then
	clear
	# systemd-inhibit is used to prevent accident power button presses during a graphical session, as pressing the power button will immediately shut down the computer without warning. Due to the encrypted $HOME, rapid shutdowns are not necessary, as you can quickly lock the $HOME dir just by quitting sway (Win+Shift+Q will immediately quit sway, and that's a lot harder to accidentally press compared to a single button).
	exec systemd-inhibit --what=handle-power-key --why="Prevent accidental power button presses" sway > /dev/null 2>&1
fi
