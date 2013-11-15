# default editor
export EDITOR='subl -w'

# aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

alias path='echo -e ${PATH//:/\\n}'

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

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Recursively remove svn metadata
alias unsvn="find . -type d -name .svn -exec rm -rf {} \;"

# Recursively remove unity metadata
alias unmeta="find . -type f -name '*.meta' -ls -delete"

# some functions
function b { cd ~/Dropbox/Sites/attilamcom_src/$1; }
function d { cd ~/Dropbox/$1; }
function h { cd ~/$1; }
function p { cd ~/Work/$1; }
function s { cd ~/Sites/$1; }

function mkcdr {
	mkdir -p $1
	cd $1
}

export PATH="~/Dropbox/scripts:~/bin:$PATH"

# History related
export HISTCONTROL=ignoredups
# export HISTIGNORE="ls:ls *"


