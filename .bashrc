if [ -z "$BASH_EXECUTION_STRING" ] && [[ $(cat /proc/$PPID/cmdline | tr '\0' '\n') != "fish" ]]; then
	export TERM="xterm-256color"
	exec fish
fi
unset HISTFILE
