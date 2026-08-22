# ~/.settings.zsh

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="${HOME}/.zsh_history"

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
setopt APPEND_HISTORY

# don't store history/fc commands
setopt HIST_NO_STORE

# Change directory without typing 'cd'
setopt AUTO_CD

# Used with the zsh-history-substring-search plugin
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Move through words like Bash (i.e. stop at forward slashes, full stops)
autoload -U select-word-style
select-word-style bash

# Zsh does not allow comment characters in interactive shells by default. This re-enables them
setopt interactivecomments
