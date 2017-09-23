bind "set completion-ignore-case on"
# bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# cd like on the Amiga!
CDPATH="."
shopt -s autocd

shopt -s histappend
shopt -s dirspell
shopt -s cdspell

# History related
export HISTCONTROL=ignoreboth
# export HISTIGNORE="ls:ls *"

# the prompt
if [ -n "$SSH_CLIENT" ]; then
  export PS1="\[\e[34;1m\]\u@\h\[\033[m\] \[\e[32;1m\]\W\[\033[m\] $ "
else
  export PS1="\[\e[34;1m\]\u\[\033[m\] \[\e[32;1m\]\W\[\033[m\] $ "
fi

# load common stuff
test -f ~/.common && source ~/.common

# load private stuff
test -f ~/.private && source ~/.private
