#!/bin/sh

# cd into dotfiles folder before running!

for name in *; do
	if [[ $name != 'install.sh' && $name != 'README.md' && $name != '_extra' && $name != '.git' ]]; then
		target="$HOME/.$name"

		if [ -e "$target" ]; then
			if [ ! -L "$target" ]; then
				echo "WARNING: $target exists and is NOT a symlink (skipped)."
			else
				echo "Updating $target"
				ln -Fs "$PWD/$name" "$target"
			fi
		else
			echo "Creating $target"
			ln -Fs "$PWD/$name" "$target"
		fi
	fi
done
