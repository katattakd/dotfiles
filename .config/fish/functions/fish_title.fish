function fish_title
	if test "$argv[1]" = ""
		echo $USER at (prompt_hostname) in (prompt_pwd)
	else
		echo $argv[1] in (prompt_pwd)
	end
end
