# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then . /etc/bashrc; fi

for file in ~/.bash_{aliases,exports,functions,prompt,settings}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source ~/.gitstatus/gitstatus.prompt.sh
PROMPT_COMMAND="my_prompt; history -a"