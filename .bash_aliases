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

# Run binwalk through virtual framebuffer when possible
if is_installed xvfb-run; then
    alias binwalk="xvfb-run binwalk"
fi

# Alias sqlmap (if installed in /opt directory)
if [ -d "/opt/sqlmap" ]; then
    alias sqlmap="python /opt/sqlmap/sqlmap.py"
fi

# Allow running dev-env in any directory (if installed)
if [ -d "/opt/dev-env" ]; then
    alias dev-env="/opt/dev-env/dev-env.sh"
fi

# Set env var for GNU sort for cross-platform
# compatibility (Mac OS arguments seem to differ)
GNU_SORT="sort"
if is_installed gsort; then
    GNU_SORT="gsort"
fi

# Shows top directories and files, as well as total disk usage in the current directory
alias usage='(du -hsx * | $GNU_SORT -rh | head -10) && echo "\t..." && (du -ch | grep total)'

# Gets the total disk usage on the machine
alias totalusage='df'

# Just some fun stuff
alias joke='fortune | cowsay'
alias badjoke='fortune -o | cowsay'

