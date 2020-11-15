# .bashrc for linux
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# enable vi mode in bash
set -o vi

# key binds
bind -m vi-insert "\C-l":clear-screen

# aliases
alias ls="ls -hN --color=auto --group-directories-first"
alias lsa="ls -a -hN --color=auto --group-directories-first"
alias t="touch"
alias update="yay"

alias v="vim"
alias sv="sudo vim"
alias R="R --quiet"
alias nb="jupyter-notebook"
alias info="neofetch"
alias xclip="xclip -selection c"
alias pmp="python -m pip"

# git aliases
alias gs="git status"
alias ga="git add"
alias gr="git rm"
alias gc="git commit"
alias psh="git push"
alias pll="git pull"
alias reset="git reset"

# script aliases
alias ts="bash ~/.config/scripts/toggle_touch.sh"
alias mntsd="bash ~/.config/scripts/mntsd.sh"
alias pipupdate="bash ~/.config/scripts/pip_upgrade_all.sh"

# prompt
PS1='\[\033[0;36m\]\u\[\033[0;37m\]@\[\033[0;36m\]\h \[\033[0;33m\]\W \[\033[0;37m\]\$ \[\033[0;37m\]'

# env variables
export PS1
export XAUTHORITY="/home/jacek/.Xauthority"
export GUROBI_HOME="/opt/gurobi910/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
