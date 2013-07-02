# Useful aliases and functions

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
