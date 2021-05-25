function fish_user_key_bindings
	bind \cH backward-kill-path-component
	bind -k f2 "run_command qalc"
	bind -k f3 "run_command lazygit"
	bind -k f5 "run_command reset"
end

function run_command
	commandline -r "$argv"
	commandline -f execute
end
