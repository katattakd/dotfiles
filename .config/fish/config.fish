set TTY1 (tty)
if test "$TTY1" = "/dev/tty1"
	clear
	exec systemd-inhibit --what=handle-power-key --why="Prevent accidental power button presses" sway &> /dev/null # Pinebook Pro specific fix
end

if command -v flatpak > /dev/null
	function flatrun
		run flatpak run --user $argv
	end

	abbr -ga flatseal 'flatrun com.github.tchx84.Flatseal'
	abbr -ga gimp 'flatrun org.gimp.GIMP'
	abbr -ga libreoffice 'flatrun org.libreoffice.LibreOffice'
	abbr -ga rawtherapee 'flatrun com.rawtherapee.RawTherapee'
end
