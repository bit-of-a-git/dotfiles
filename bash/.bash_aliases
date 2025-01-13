# ~/.bash_aliases

# History aliases.
alias h='history'
alias gh='history | grep -i' # note: gh is also the "github" command

# Append commands with _ for sudo.
alias _='sudo'

# Quick cd commands
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Common variations of 'ls' command.
alias ls='ls --color=always' # add colors and file type extensions
alias la="ls -la"            # long listing and show hidden
alias lc='ls -ltcr'          # sort by change time, remove r to start with latest
alias lh="ls -lh"            # human readable
alias lk='ls -lSrh'          # sort by size, remove r to start with largest
alias ll="ls -l"             # long listing format
alias lu='ls -luthr'         # sort by access time, remove r to start with latest
alias lx='ls -lXBh'          # sort by extension

# Aliases to modified commands. Append \ before a command to use it unaltered
alias chgrp='chgrp --preserve root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias cp='cp -ir'              # -i asks before overwrite. r for recursive is usually intended
alias df="df -h"               # human-readable
alias grep="grep --color=auto" # colours grep matches
alias mv='mv -i'
alias mkdir='mkdir -p' # -p creates parent directory if it doesn't exist
alias ping='ping -c 10'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias wget='wget -c' # resumes getting partially downloaded files

# Vim commands.
alias vi='vim'
alias vis='vim "+set si"' # si is 'smart indentation'
alias svi='sudo vim'

# AWS aliases.
alias sts='aws sts get-caller-identity'

# Git commands.
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gpl='git pull'
alias gpu='git push'
alias gr='git restore'
alias gs='git status'
alias ..git='cd $(git rev-parse --show-toplevel)' # Move to the root level of a git repository

# Kubernetes aliases.
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods -A'
alias kdp='kubectl describe pod'
alias kgd='kubectl get deployments'
alias kgda='kubectl get deployments -A'
alias kdd='kubectl describe deployment'
alias kgn='kubectl get nodes'
alias kdn='kubectl describe node'

# Terraform aliases.
alias tf='terraform'
alias tfa='terraform apply'
alias tfay='terraform apply -auto-approve'
alias tfd='terraform destroy'
alias tfdy='terraform destroy -auto-approve'
alias tff='terraform fmt'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfv='terraform validate'

# Disk commands.
alias diskspace="du -S | sort -n -r |more"
alias mountedinfo='df -hT'

#Show active ports.
alias port='ss -tulpn'

alias myip="curl ifconfig.me"

# Shortened interpreter commands.
alias py='$(which python3)'
