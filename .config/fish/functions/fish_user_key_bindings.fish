function fish_user_key_bindings
	bind \cH backward-kill-path-component
	bind -k f3 "run_command lazygit"
	bind -k f5 "run_command reset"

	bind -k f10 "change_dir ~/Desktop"
	bind -k f11 "change_dir ~/dotfiles"
	bind -k f12 "change_dir ~/Desktop/Downloads"
end

function change_dir
	run_command cd $argv 
end

function run_command
	commandline -r "$argv"
	commandline -f execute
end
