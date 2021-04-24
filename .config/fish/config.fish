ulimit -c 0

set TTY1 (tty)
if test "$TTY1" = "/dev/tty1"
	clear
	exec sway &> /dev/null
end

if command -v flatpak > /dev/null
	function flatrun
		run flatpak run --user $argv
	end

	abbr -ga gimp 'flatrun org.gimp.GIMP'
	abbr -ga libreoffice 'flatrun org.libreoffice.LibreOffice'
	abbr -ga rawtherapee 'flatrun com.rawtherapee.RawTherapee'
end
