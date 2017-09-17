

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/attila/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias subl='~/bin/subl'
alias e='~/bin/subl'
alias se='sudo ~/bin/subl'
export EDITOR='subl'

alias brain='subl ~/Dropbox/Braindump/Braindump.sublime-project'

alias f='open .'
alias ls='ls -FGah'

alias svn18="/usr/local/opt/subversion@1.8/bin/svn"

alias https="python -m SimpleHTTPServer"

function d { cd /Volumes/MrData/Downloads/$1; }
function h { cd ~/$1; }
function p { cd /Volumes/MrData/Work/$1; }
function psentio { cd /Volumes/MrData/Work/Sentiomedia/$1; }

function mkcdr {
  mkdir -p $1
  cd $1
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

function myip() {
  internalip=`ifconfig | ruby -e "print STDIN.readlines.select { |a| a =~ /inet / }.reject { |a| a =~ /127/ }.map { |a| a.split(' ')[1] }.join(', ')"`
  externalip=`curl -s https://jsonip.com | jq -r .ip | tr -d '\n'`
  echo "Internal: $internalip"
  echo "External: $externalip"
  echo -n $externalip | pbcopy
}

PATH="/Volumes/MrData/_GitHub/scripts:$HOME/bin:$PATH"

##Renderman
# RMANTREE="/Applications/Pixar/RenderManProServer-21.3"
# PATH="$PATH:$RMANTREE/bin"

##Houdini Environment Setup
cd '/Applications/Houdini/Current/Frameworks/Houdini.framework/Versions/Current/Resources'
source ./houdini_setup
cd -

## MySQL
PATH="/usr/local/mysql/bin:$PATH"

# disable dotNet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# load private stuff
test -f ~/.private && source ~/.private