# ~/.bash_aliases
alias multiscreen='screen -c ~/.multiscreen.conf'
alias predate="xargs -I{} sh -c 'gdate +\"%Y-%m-%d %H:%M:%S.%3N\" | tr \"\n\" \" \"; echo \"{}\"'"

if [[ "$platform" == 'macos' ]]; then
    alias ls="gls --color=auto --group-directories-first"
fi

if [ -d "/opt/sqlmap" ]; then
    alias sqlmap="python /opt/sqlmap/sqlmap.py"
fi

