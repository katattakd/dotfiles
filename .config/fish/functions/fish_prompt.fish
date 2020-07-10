function fish_prompt
	if not set -q IS_EXISTING_TERM
		set -g IS_EXISTING_TERM true
	else
		printf "\n"
	end

	set_color $fish_color_user
	printf "$USER"
	set_color normal
	printf ' at '

	set_color $fish_color_host
	echo -n (prompt_hostname)
	set_color normal
	printf ' in '

	set_color $fish_color_cwd
	echo (prompt_pwd)

	set_color normal
	printf '↪ '
end
