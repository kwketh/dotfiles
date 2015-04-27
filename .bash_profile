# Set default display for X11
export DISPLAY=localhost:0

# Setup dircolors
eval `gdircolors ~/.dircolors/dircolors.256dark`

init_docker() {
    $(boot2docker shellinit 2>/dev/null)
    ssh-add ~/.ssh/id_boot2docker 2> /dev/null
}

# Init docker only if it is running
# (shell will init quicker with the condition)
[[ $(boot2docker status) == "running" ]] && init_docker

