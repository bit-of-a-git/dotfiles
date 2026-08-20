# ~/.antidote-config.zsh

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# Used for several oh-my-zsh plugins
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"

# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load
