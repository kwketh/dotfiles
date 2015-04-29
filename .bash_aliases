# ~/.bash_aliases

# Starts a screen with multiuser option enabled by default
alias multiscreen='screen -c ~/.multiscreen.conf'

# Prepends curernt time and date to each line
alias predate="xargs -I{} sh -c 'gdate +\"%Y-%m-%d %H:%M:%S.%3N\" | tr \"\n\" \" \"; echo \"{}\"'"

# Determines if a command-line utility is installed
is_installed() {
    hash $1 2> /dev/null
}

# Use GNU ls (provides colored output) if installed
if is_installed gls; then
    alias ls="gls --color=auto --group-directories-first"
fi

# Same thing but for diff
if is_installed colordiff; then
    alias diff="colordiff"
fi

# Alias sqlmap (if installed in /opt directory)
if [ -d "/opt/sqlmap" ]; then
    alias sqlmap="python /opt/sqlmap/sqlmap.py"
fi

# Grabs the disk usage in the current directory
alias usage='du -ch | grep total'
alias fatducks='du -ck | sort -nr | head'

# Gets the total disk usage on your machine
alias totalusage='df'

