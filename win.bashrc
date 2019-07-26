# jacek's .bashrc for win

# enable vi mode in bash
set -o vi


# key binds
bind -m vi-insert "\C-l":clear-screen


# aliases
alias ls="ls -hN --color=auto --group-directories-first"
alias t="touch"

alias gs="git status"
alias ga="git add"
alias gr="git rm"
alias gc="git commit"
alias gp="git push"
alias reset="git reset"

alias v="vim"
alias V="vim"
alias sv="sudo vim"


# prompt
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$GREEN\u$WHITE@$GREEN\h $WHITE\w $GREEN\$ $RESETCOLOR"
}
