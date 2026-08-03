# ~/.bash_aliases

# Common variations of 'ls' command.
alias ls='ls --color=always' # add colors and file type extensions
# alias la="ls -la"            # long listing and show hidden
# alias lc='ls -ltcr'          # sort by change time, remove r to start with latest
# alias lh="ls -lh"            # human readable
# alias lk='ls -lSrh'          # sort by size, remove r to start with largest
# alias ll="ls -l"             # long listing format
# alias lu='ls -luthr'         # sort by access time, remove r to start with latest
# alias lx='ls -lXBh'          # sort by extension

# Aliases to modified commands. Append \ before a command to use it unaltered
# alias df="df -h"                    # human-readable
alias grep="grep --color=auto"      # colours grep matches
# alias mkdir='mkdir -p'              # -p creates parent directory if it doesn't exist
# alias ping='ping -c 10'
# alias tree='tree -CAhF --dirsfirst'
# alias treed='tree -CAFd'
# alias wget='wget -c'                # resumes getting partially downloaded files

# Vim commands.
# alias vis='vim "+set si"' # si is 'smart indentation'
# alias svi='sudo vim'

# AWS aliases.
alias sts='aws sts get-caller-identity'

# Kubernetes aliases.
alias k='kubectl'
# alias kgp='kubectl get pods'
# alias kgpa='kubectl get pods -A'
# alias kdp='kubectl describe pod'
# alias kgd='kubectl get deployments'
# alias kgda='kubectl get deployments -A'
# alias kdd='kubectl describe deployment'
# alias kgn='kubectl get nodes'
# alias kdn='kubectl describe node'

# Disk commands.
# alias diskspace="du -S | sort -n -r |more"
# alias mountedinfo='df -hT'
