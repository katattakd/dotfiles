set -gx CARGO_HOME $HOME/.local/share/cargo
set -gx RUSTUP_HOME $HOME/.local/share/rustup

function run
	$argv &>/dev/null &; disown
end

function play
	run mpv $argv
end

function view
	run mpv --profile=image $argv
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

