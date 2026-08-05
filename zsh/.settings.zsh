# ~/.settings.zsh

# Emacs mode (e.g. ctrl+a to start of line, ctrl+e to end of line)
bindkey -e

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt APPEND_HISTORY

# Change directory without typing 'cd'
setopt AUTO_CD

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down