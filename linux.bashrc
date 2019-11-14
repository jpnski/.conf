# .bashrc for linux
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export XAUTHORITY=/home/jacek/.Xauthority
export GIO_EXTRA_MODULES=/usr/lib64/gio/modules/
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64/"
export CUDA_HOME=/opt/cuda/
export TF_CPP_MIN_LOG_LEVEL=2

# enable vi mode in bash
set -o vi

# key binds
bind -m vi-insert "\C-l":clear-screen

# aliases
alias ls="ls -hN --color=auto --group-directories-first"
alias lsa="ls -a -hN --color=auto --group-directories-first"
alias t="touch"
alias update="yay"
alias get="sudo pacman -S"
alias yeet="sudo yay -S"
alias tar="tar xfz"

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
alias R="R --quiet"
alias nb="jupyter notebook"
alias info="neofetch"
alias xclip="xclip -selection c"

# script aliases
alias pipupdate="bash ~/.config/scripts/pip_upgrade_all.sh"
alias ts="bash ~/.config/scripts/toggle_touch.sh"
alias vpdf="bash ~/.config/scripts/browser_pdf_cli.sh"
alias mntsd="bash ~/.config/scripts/mntsd.sh"

# prompt
PS1='\[\033[0;36m\]\u\[\033[0;37m\]@\[\033[0;36m\]\h \[\033[0;33m\]\W \[\033[0;37m\]\$ \[\033[0;37m\]'
export PS1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jacek/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jacek/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jacek/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jacek/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
