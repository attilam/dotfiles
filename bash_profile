# aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'

alias path='echo -e ${PATH//:/\\n}'

alias love='/Applications/love.app/Contents/MacOS/love'

alias flashlog='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'

alias res='source ~/.bash_profile'

alias m='mate'
alias sm='sudo mate'
alias smate='sudo mate'

alias mb='mate ~/.bash_profile'

# Open current directory in Finder
alias f='open .'

# don't question me, just delete
alias rm='rm -r'

# following aliases from https://github.com/mathiasbynens/dotfiles/blob/master/.aliases

# IP addresses 
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias whois="whois -h whois-servers.net"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# some functions
function h { cd ~/$1; }
function p { cd ~/Work/$1; }
function d { cd ~/Dropbox/$1; }

function mkcdr {
	mkdir -p $1
	cd $1
}

# Open a new terminal tab in the same directory as the current
# SOURCE => http://dotfiles.org/~bogojoker/.bashrc
function nth {
  osascript -e "
  Tell application \"Terminal\"
    activate
    tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down
    do script with command \"cd '$(pwd)'; clear\" in selected tab of the front window
  end tell"
}

# assumes MacPorts and MySQL is installed
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH

# History related
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:ls *"

export EDITOR="mate"
