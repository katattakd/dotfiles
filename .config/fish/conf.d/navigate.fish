function navigate --on-variable PWD
	eval $_fish_abbr_ls
end

function .
	navigate
end
