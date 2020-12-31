# If a command is running, the title is:
## [command] in [shorthand working directory]

# If a command is not running, the title is:
## [user] at [hostname] in [shorthand working directory]

function fish_title
	if test "$argv[1]" = ""
		echo $USER at (prompt_hostname) in (prompt_pwd)
	else
		echo $argv[1] in (prompt_pwd)
	end
end
