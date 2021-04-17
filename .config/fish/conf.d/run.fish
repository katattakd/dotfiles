function run
	$argv &>/dev/null &; disown
end

function play
	run mpv $argv
end

function view
	run mpv --profile=image $argv
end
