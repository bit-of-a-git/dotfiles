# ~/.completions.zsh - sets how tab completion works

# Initialize Zsh completion system
autoload -U compinit && compinit

# Carapace-related
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

# Better colors for file listings in completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

zstyle ':completion:*' list-prompt ''

# Menu selection with arrow keys and visual highlighting
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt ' %SScrolling active: current selection at %p%s'
