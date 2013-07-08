# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#==================
# History settings
#==================

# default HISTFILE but let's set it anyway
export HISTFILE=~/.bash_history
# append to the history file, don't overwrite it
shopt -s histappend
# combine multi-line commands into one in history
shopt -s cmdhist
export HISTSIZE=5000
export HISTFILESIZE=5000
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
# other commands to ignore
export HISTIGNORE="ls:[bf]g:exit:q:cd:pwd:clear"
# time format as "Tue 2013-07-02 10:22 PM :- "
export HISTTIMEFORMAT="%a %F %I:%M %p :- "

#### MOVED to ~/.inputrc (where you could claim they belong)
# Let Up and down arrow keys search for previous command
# bind '"\e[A":history-search-backward'
# bind '"\e[B":history-search-forward'

#==================
# Prompt settings
#==================

# delete when sort out prompt
alias mintps1="PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '"


#=================
# Aliases
#=================

# aliases and functions placed in separate file. Source them here.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#==================
# Misc settings
#==================

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# fix spelling errors when cd
shopt -s cdspell

 # grep, egrep, etc in colour
export GREP_OPTIONS='--color=auto'
