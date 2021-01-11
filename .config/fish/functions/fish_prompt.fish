# Prompt:
## [user] at [hostname] in [shorthand working directory]
## ↪ [command]

function fish_prompt
	# If the terminal is empty, don't print a newline before the prompt.
	if not set -q IS_EXISTING_TERM
		set -g IS_EXISTING_TERM true
	else
		printf "\n"
	end

	set_color $fish_color_user
	printf "$USER"
	set_color $fish_color_comment
	printf ' at '

	set_color $fish_color_host
	echo -n (prompt_hostname)
	set_color $fish_color_comment
	printf ' in '

	set_color $fish_color_cwd
	echo (prompt_pwd)

	set_color $fish_color_comment
	printf '↪ '
	set_color normal
end
