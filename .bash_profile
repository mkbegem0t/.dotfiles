alias ls='ls -F --color'
alias xargs="gxargs"
alias vim="/usr/local/bin/vim"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
eval `dircolors .dir_colors`
export PS1='\[\033[32m\]\u@\h\[\033[0m\] \[\033[36m\]\w\$\[\033[0m\] '
export PATH=$PATH:$HOME/.nodebrew/current/bin
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
