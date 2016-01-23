# .bashrc

# User specific aliases and functions
alias ll='ls -l'

# Source global definitions
if [ -f /etc/bashrc ]; then
     . /etc/bashrc
fi




export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
