# default editor
export EDITOR='subl'
alias s='open -a "Sublime Text"'

# aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~='cd ~'

alias sudo='sudo '

alias path='echo -e ${PATH//:/\\n}'

alias res='source ~/.bash_profile'

alias e='$EDITOR'
alias se='sudo $EDITOR'

alias eb='$EDITOR /Users/attila/.bash_profile'

alias brain='subl ~/Dropbox/Braindump'

# Open current directory in Finder
alias f='open .'

# nice directory listing
alias ls='ls -FGah'

# Colored up cat!
# You must install Pygments first - "sudo easy_install Pygments"
alias c='pygmentize -O style=monokai -f console256 -g'

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Recursively remove svn metadata
alias unsvn="find . -type d -name .svn -exec rm -rf {} \;"

# Recursively remove git metadata
alias ungit="find . -type d -name .git -exec rm -rf {} \;"

# Recursively remove unity metadata
alias unmeta="find . -type f -name '*.meta' -ls -delete"

# VLC on the command line!
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# static http page server in the current folder!
alias https='ruby -run -ehttpd . -p8000'

# Show/Hide hidden files in Finder
alias showHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Enable/Disable crash reporter

alias disableCrashReporter='defaults write com.apple.CrashReporter DialogType none'
alias enableCrashReporter='defaults write com.apple.CrashReporter DialogType crashreport'

# Show Local IP (and some other junk, wish there was a better way)
alias localip='ifconfig | grep inet'

# Start Visual Studio Code
code () {
	if [[ $# = 0 ]]
	then
		open -a "Visual Studio Code"
	else
		[[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
		open -a "Visual Studio Code" --args "$F"
	fi
}

# some functions
function d { cd ~/Dropbox/$1; }
function h { cd ~/$1; }
function p { cd /Volumes/MrData/Work/$1; }
function psentio { cd /Volumes/MrData/Work/Sentiomedia/$1; }

function mkcdr {
	mkdir -p $1
	cd $1
}

function dirsize { du -hcs $1; }

function waitfornet {
	until ping -W1 -c1 yahoo.com;
		do sleep 5;
	done
	say the internet is back
}

brews () {
	for name in $(brew leaves); do
		brew info $name | awk '{ if (NR==1) {printf "%s ", $1}; if (NR==2) {print}; }';
	done
}

function shot2jpg() {
	convert "$@" -background white -alpha remove -strip -quality 90 "${@%.*}.jpg"
}

function shot2jpg50() {
	convert "$@" -scale 50% -background white -alpha remove -strip -quality 90 "${@%.*}.jpg"
}

function shot2jpg75() {
	convert "$@" -scale 75% -background white -alpha remove -strip -quality 90 "${@%.*}.jpg"
}

bind "set completion-ignore-case on"
# bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# cd like on the Amiga!
CDPATH="."
shopt -s autocd

shopt -s histappend
shopt -s dirspell
shopt -s cdspell

export PATH="~/Dropbox/bin:~/bin:/usr/local/bin:/usr/local/sbin:$PATH"

##Houdini Environment Setup
#cd /Library/Frameworks/Houdini.framework/Versions/Current/Resources
#source houdini_setup
#cd -

# disable dotNet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# History related
export HISTCONTROL=ignoreboth
# export HISTIGNORE="ls:ls *"

# the prompt
if [ -n "$SSH_CLIENT" ]; then
	export PS1="\[\e[34;1m\]\u@\h\[\033[m\] \[\e[32;1m\]\W\[\033[m\] $ "
else
	export PS1="\[\e[34;1m\]\u\[\033[m\] \[\e[32;1m\]\W\[\033[m\] $ "
fi

# Load .bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}
