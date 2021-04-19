function run
	$argv &>/dev/null &; disown
end

function play
	run mpv --force-window=yes $argv
end

function view
	play --profile=image $argv
end

function hear
	play --video=no $argv
end
