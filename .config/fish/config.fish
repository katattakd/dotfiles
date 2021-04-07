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

function flatrun
	run flatpak run --user $argv
end
