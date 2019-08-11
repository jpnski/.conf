# jacek's .bashrc for win

# enable vi mode in bash
set -o vi


# key binds
bind -m vi-insert "\C-l":clear-screen


# aliases
alias ls="ls -hN --color=auto --group-directories-first"
alias lsa="ls -a -hN --color=auto --group-directories-first"
alias t="touch"

alias gs="git status"
alias ga="git add"
alias gr="git rm"
alias gc="git commit"
alias psh="git push"
alias pll="git pull"
alias reset="git reset"

alias v="vim"
alias V="vim"
alias sv="sudo vim"

alias nb="jupyter notebook"


# prompt
PS1='\[\033[0;36m\]\u\[\033[0;37m\]@\[\033[0;36m\]\h \[\033[0;33m\]\W \[\033[0;37m\]\$ \[\033[0;37m\]'
export PS1
