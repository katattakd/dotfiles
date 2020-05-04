if [ -z "$BASH_EXECUTION_STRING" ] && [[ $(cat /proc/$PPID/cmdline | tr '\0' '\n') != "fish" ]]; then
	exec fish
fi
unset HISTFILE
