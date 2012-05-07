# default editor
export EDITOR="subl"

# aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'

alias path='echo -e ${PATH//:/\\n}'

alias love='/Applications/love.app/Contents/MacOS/love'

alias flashlog='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
alias boxeelog='sudo nc -l -u 514'

alias dayone='/Applications/Day\ One.app/Contents/MacOS/dayone'

alias phpa='php ~/Work/phpa-norl'

alias res='source ~/.bash_profile'

alias e='$EDITOR'
alias se='sudo $EDITOR'

alias eb='$EDITOR /Users/attila/.bash_profile'

# Open current directory in Finder
alias f='open .'

# nice directory listing
alias ls='ls -FGh'

# don't question me, just delete
alias rm='rm -r'

# following aliases from https://github.com/mathiasbynens/dotfiles/blob/master/.aliases

# IP addresses 
alias ip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias whois="whois -h whois-servers.net"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# some functions
function a { cd ~/Desktop/$1; }
function d { cd ~/Dropbox/$1; }
function g { cd ~/Work/github/$1; }
function h { cd ~/$1; }
function p { cd ~/Work/$1; }
function s { cd ~/Sites/$1; }

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

# Pretty print JSON
cjson () {
  local url=$(echo $1)
  if [[ "http" == $url[0,4] ]] ; then
    curl --silent $url | python -mjson.tool | pygmentize -O style=monokai -f console256 -g
  else
    cat $url | python -mjson.tool | pygmentize -O style=monokai -f console256 -g
  fi
}

# assumes MacPorts and MySQL is installed
export PATH=~/Dropbox/scripts:~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/mysql/bin:/Developer/SDKs/flex.sdk/bin:/opt/local/share/luarocks/bin:$PATH

# History related
export HISTCONTROL=ignoredups
# export HISTIGNORE="ls:ls *"
