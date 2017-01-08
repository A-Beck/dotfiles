# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# set up path to the JDK
export JAVA_HOME='/usr/lib/jvm/java-1.8.0'
export PATH=$PATH:$JAVA_HOME

#Set Up Maven Installation
export MVN='/opt/apache-maven-3.3.3/bin'
export PATH=$PATH:$MVN

#Allow for Ansible Custom Modules
#export ANSIBLE_LIBRARY="$HOME/.ansible-modules-extra:/usr/lib/python2.7/site-packages/ansible"

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

# openshift command line tooling
alias oc="/usr/local/share/openshift-client/oc"
# make docker usable
alias docker="sudo /usr/bin/docker"
