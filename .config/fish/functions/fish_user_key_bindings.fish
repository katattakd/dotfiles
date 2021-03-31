function fish_user_key_bindings
	bind \cH backward-kill-path-component
	bind -k f1 "run_command 'exa --all --classify --grid --group-directories-first'"
	bind -k f2 "run_command 'exa --all --tree --level=4 --long --git --header --extended --git-ignore'"
	bind -k f3 "run_command lazygit"
	bind -k f4 "run_command htop"
	bind -k f5 "run_command reset"
	bind -k f6 "commandline -i ' &>/dev/null &'"

	bind -k f9 "change_dir .."
	bind -k f10 "change_dir ~/Desktop"
	bind -k f11 "change_dir ~/dotfiles"
	bind -k f12 "change_dir ~"
end

function change_dir
	cd $argv
	commandline -f repaint
end

function run_command
	commandline -r "$argv"
	commandline -f execute
end

