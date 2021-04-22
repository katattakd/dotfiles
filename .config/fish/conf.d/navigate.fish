function navigate --on-variable PWD
	eval $_fish_abbr_ls
end

function fc
	for arg in $argv
		set -a tocopy (echo "file://"(string escape --style=url (realpath -s "$arg")))
		string escape (realpath -s "$arg")
	end
	echo $tocopy | wl-copy
end

function fp
	for file in (string escape -n (string split -n ' ' (wl-paste)))
		set iter (math $iter + 1)
		if test (string sub -l 8 $file) = 'file:///'
			set dest '.'
			if set -q argv[$iter]
				set dest $argv[$iter]
			end
			cp -iav (string unescape --style=url (string unescape (string sub -s 8 "$file"))) $dest
		end
	end
end

function fm
	for file in (string escape -n (string split -n ' ' (wl-paste)))
		set iter (math $iter + 1)
		if test (string sub -l 8 $file) = 'file:///'
			set dest '.'
			if set -q argv[$iter]
				set dest $argv[$iter]
			end
			mv -iv (string unescape --style=url (string unescape (string sub -s 8 "$file"))) $dest
		end
	end
	wl-copy -c
end

function frm
	for arg in $argv
		rm -Irv $arg
	end
	for file in (string escape -n (string split -n ' ' (wl-paste)))
		if test (string sub -l 8 $file) = 'file:///'
			rm -Irv (string unescape --style=url (string unescape (string sub -s 8 "$file")))
		end
	end
	wl-copy -c
end

function fcd
	for arg in $argv
		cd $arg
		break
	end
	for file in (string escape -n (string split -n ' ' (wl-paste)))
		if test (string sub -l 8 $file) = 'file:///'
			set tocd (string unescape --style=url (string unescape (string sub -s 8 "$file")))
			if test -d $tocd
				cd $tocd
			else
				cd (dirname $tocd)
			end
			break
		end
	end
end

function .
	navigate
end
