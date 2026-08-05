# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source shared shell configuration
for file in ~/.shell_{aliases,exports,functions,sources}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# Source Zsh-specific configuration
for file in ~/.{settings,completions}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

unset file

# This sets up fzf. We're mainly looking for the ctrl+r command, so disabling the others
if command -v fzf >/dev/null 2>&1; then
	FZF_CTRL_T_COMMAND= FZF_ALT_C_COMMAND= eval "$(fzf --zsh)"
fi

# Search through history by entering a string and pressing up and down
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# Autosuggestions - press the right arrow to accept
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh