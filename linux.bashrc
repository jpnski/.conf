# jacek's .bashrc for linux

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# set gio modules path for screenFetch
export GIO_EXTRA_MODULES=/usr/lib64/gio/modules/


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
alias psh="git push"
alias pll="git pull"
alias reset="git reset"

alias v="vim"
alias V="vim"
alias sv="sudo vim"

alias info="screenfetch"


#prompt
PS1='\u@\h \W \$ '
export PS1


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jacekplonowski/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jacekplonowski/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jacekplonowski/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jacekplonowski/anaconda3/bin:$PATH"
    fi
