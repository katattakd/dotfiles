function navigate --on-variable PWD
	eval $_fish_abbr_ls
end

function fc
	set -l tocopy ""
	for arg in $argv
		set -a tocopy (echo "file://"(string escape --style=url (realpath -s "$arg")))
		string escape (realpath -s "$arg")
	end
	echo $tocopy | wl-copy
end

function fp
	for file in (string escape -n (string split -n ' ' (wl-paste)))
		if test (string sub -l 8 $file) = 'file:///'
			cp -iav (string unescape --style=url (string unescape (string sub -s 8 "$file"))) .
		end
	end
end

function fm
	for file in (string escape -n (string split -n ' ' (wl-paste)))
		if test (string sub -l 8 $file) = 'file:///'
			mv -iv (string unescape --style=url (string unescape (string sub -s 8 "$file"))) .
		end
	end
end

function .
	navigate
end
