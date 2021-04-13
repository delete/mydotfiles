# linux aliasses
if [[ $OSTYPE == linux-gnu* ]]; then

    alias sysup='sudo pacman -Syu && yaourt -Syyuua --noconfirm'
    alias clearcache='sudo pacman -Scc --noconfirm && sudo journalctl --vacuum-time=2d && rm -rf ~/.local/share/Trash/files'
    
    # Modified Commands
    alias free='free -m'

# macOS aliasses
elif [[ $OSTYPE == darwin* ]]; then
    
fi

# Remove all node_modules directory
alias rmnode='find . -name "node_modules" -type d -exec rm -rf '{}' +'

# Docker
alias drm="docker ps --filter status=dead --filter status=exited -aq | xargs docker rm -v"
alias drmi="docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs docker rmi"
alias dstop='docker stop $(docker ps -a -q)'
alias drmv='docker volume ls -qf dangling=true | xargs -r docker volume rm'
alias rmvolumes='cat volumes | while read LINE; do docker volume rm ${LINE}; done'

# Modified Commands
alias df='df -h'
alias mkdir='mkdir -p -v'
alias ll='ls -alh'
alias cdhome='cd ~'

# Projects
alias cdef="cd ~/Projects/easyflow"

# SSH
alias loginssh="ssh-add ~/.ssh/id_rsa &>/dev/null"
