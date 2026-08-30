# ~/.completions.zsh - sets how tab completion works

# Initialize Zsh completion system
autoload -U compinit && compinit

# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no

# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'

# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# preview directory's content when completing cd
if command -v eza >/dev/null 2>&1; then
	zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
else
	zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -1 --color=always $realpath'
fi

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false

# custom fzf flags
# NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=enter:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'
