#!/bin/sh

# based roughly on https://github.com/thoughtbot/dotfiles/blob/master/install.sh

for name in *; do
	if [[ $name != 'install.sh' && $name != 'README.md' ]]; then
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
