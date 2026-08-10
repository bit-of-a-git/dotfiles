# ~/.completions.zsh

if command -v docker >/dev/null 2>&1; then
	FPATH="${HOME}/.docker/completions:${FPATH}"
fi

# Initialize Zsh completion system
autoload -Uz compinit
compinit

# Completion matching settings
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # case-insensitive

# Better colors for file listings in completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Menu selection with arrow keys and visual highlighting
zstyle ':completion:*' menu select

# Use menu completion for completions, automatically show menu after first tab
setopt AUTO_MENU

# Group completion results
zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''

# Kill process completion
zstyle ':completion:*:kill:*' command "ps -u $USER -o pid,%cpu,cmd"
