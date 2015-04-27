if [[ "$platform" == 'macos' ]]; then
    alias dircolors="gdircolors"
fi

# Set default display for X11
export DISPLAY=localhost:0

# Setup dircolors
eval `dircolors ~/.dircolors/dircolors.256dark`

is_docker_installed() {
    type boot2docker >/dev/null 2>&1 
}

is_docker_running() {
    [[ $(boot2docker status) == "running" ]]
}

init_docker() {
    $(boot2docker shellinit 2>/dev/null)
    ssh-add ~/.ssh/id_boot2docker 2> /dev/null
}

# Init docker only if it is running
# (shell will init quicker with the condition)
is_docker_installed && is_docker_running && init_docker
