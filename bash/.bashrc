# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then . /etc/bashrc; fi

# Source bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Source shared shell configuration
for file in ~/.shell_{aliases,exports,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# Source Bash-specific configuration
for file in ~/.bash_{prompt,settings}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

unset file

if [ -f ~/.gitstatus/gitstatus.prompt.sh ]; then
    source ~/.gitstatus/gitstatus.prompt.sh
    PROMPT_COMMAND='PROMPT_EXIT_CODE=$?; history -a; history -n; my_prompt $PROMPT_EXIT_CODE'
else
    PROMPT_COMMAND='history -a; history -n;'
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

if command -v npm >/dev/null 2>&1; then
    source <(npm completion)
fi

# This sets up fzf. I am mainly looking for the ctrl+r command, so disabling the others
if command -v fzf >/dev/null 2>&1; then
    FZF_CTRL_T_COMMAND= FZF_ALT_C_COMMAND= eval "$(fzf --bash)"
fi

