# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# aliases and functions placed in separate file. Source them here.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

