# Useful aliases and functions

#================
# ls aliases
#================

alias ls='ls -F --color=auto'
alias ll='ls -hlp'
alias la='ls -A'


log () {
    # Send message to personal log file
    # Usage: log <message>
    # Example: log Installed dropbox

    logdir="$HOME/log/"                 # directory to keep logfiles
    logdate=$(date +'%Y%m')
    logfile="${logdir}logfile.${logdate}"
    separator="--"                      # separator between date and message

    echo "$(date +'%Y-%m-%d %H:%M') $separator $*" >> $logfile
    echo "$(date +'%Y-%m-%d %H:%M') $separator $* --> $logfile"
}

alias q='exit'
alias ping='ping -c5'       # 5 pings are enough

# Search history for pc (previous command)
pc () { history | egrep -i "$*"; }

# Show paths each on a separate line
alias paths='echo -e " "${PATH//:/\\n }'

#use open to open files form the commandline
alias open='/usr/bin/gnome-open'

# Show an alert when process finishes in terminal
# Usage: '<command(s)>; alert'
alias alert='notify-send -i gnome-terminal "Finished Terminal Job" "[$?] $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# "del" moves things to trash (as does "trash")
alias del="trash-put"

# Top 10 commands from my history (not working because of quoting)
alias top10="history | awk '{print $7}' | awk \'BEGIN {FS='\"'|'\"'} {print $1}\' | sort | uniq -c | sort -rn | head -10"

#Use human-readable filesizes
alias du="du -h"
alias df='df -h'

alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
