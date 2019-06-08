# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

GOPATH=$HOME/Code/go

export GOPATH

### TMUX work-around
source ~/.bashrc
