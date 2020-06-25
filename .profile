#!/bin/sh
export XDG_RUNTIME_DIR="/tmp"
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
