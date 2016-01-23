## Zsh環境設定
## K.Mashimo

#export PATH=/Applications/Xcode6-Beta3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/:$PATH
#export PATH="$HOME/.rbenv/shims:$PATH"   # Ruby on Rails

alias ll='ls -l'
alias la='ls -al'
alias l='ls'
alias tm='tmux'
alias j='jobs'

alias pc='ssh 192.168.1.24'
alias centos='ssh 192.168.0.9'

alias vbpc1='ssh mashi@192.168.1.10' # ssh access
alias ctags='/usr/local/Cellar/ctags/5.8/bin/ctags -f .tags' # ctags from brew

#-------------------------
# Prompt Setting.
#-------------------------
PROMPT="[%n@%m: %~]
# "


autoload -U compinit
compinit

## lsに色をつける
#export LSCOLORS=exfxcxdxbxegedabagacad
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
#alias ls="ls -GF"
#alias gls="gls --color"
#zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#eval "$(rbenv init -)"
