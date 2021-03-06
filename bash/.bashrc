# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# git completion
source /usr/share/git-core/contrib/completion/git-prompt.sh
GIT_COMPLETION_PATH="/etc/bash_completion.d/git.sh"
if [ -f "$GIT_COMPLETION_PATH" ]; then
   GIT_PS1_SHOWDIRTYSTATE=true
   . "$GIT_COMPLETION_PATH"
   ADD_PS1='$(__git_ps1)'
fi

# better prompt
if [[ ${EUID} == 0 ]] ; then
    PS1="\[\033[01;31m\]\h\[\033[01;34m\] \w\[\033[33m\]$ADD_PS1\[\033[34m\] \n\\$\[\033[00m\] "
else
    PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[33m\]$ADD_PS1\[\033[34m\] \n\\$\[\033[00m\] "
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# use vim over vi
export EDITOR=vim
export PAGER=less

# less options - https://opensource.com/article/18/5/advanced-use-less-text-file-viewer
LESS='-C -M -I -j 10 -# 4'

# perevent freezing
# So as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

#Allow for Ansible Custom Modules
export ANSIBLE_RETRY_FILES_ENABLED='FALSE'

# User specific aliases and functions
##  Power control
alias powersave='sudo tuned-adm profile powersave'
alias balanced='sudo tuned-adm profile balanced'
alias performance='sudo tuned-adm profile throughput-performance'
##  handy shortcuts 
alias update='sudo dnf update -y'
##  ls
alias ls='ls -h --color'
alias la='ls -ah'
alias lx='ls -lXB'
alias lk='ls -lSr'
alias lt='ls -ltr'
## typos
alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'
## debugging
alias debug="set -o nounset; set -o xtrace"
# Enable options:
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob   

# random
function mkcd() {
    mkdir $1
    cd $1
}
