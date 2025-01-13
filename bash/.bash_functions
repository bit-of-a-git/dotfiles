# ~/.bash_functions

# Creates a new directory and cds to it immediately
function mkd() {
    mkdir -p "$@"
    cd "$@" || exit
}

# Will allow you to override the require virtualenv setting, and install pip packages globally.
function gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# Tars up provided files into an archive named after the folder you are in.
function targz() {
    tar -zcvf "$(basename "$PWD").tar.gz" "$@"
}

# up 2 = cd ../.. , for example
function up {
    if [[ $1 =~ ^[1-9][0-9]*$ ]]; then
        ups=$(printf '../%.0s' $(seq 1 "$1"))
        cd "$ups" || exit
    else
        echo "Please provide a positive integer."
    fi
}

# Extract basically anything
function xt() {
    if [ -f "$1" ]; then
        case "$1" in
        *.tar.bz2) tar -xvjf "$1" --one-top-level && cd "$(basename "$1" .tar.bz2)" || return 1 ;;
        *.tar.gz) tar -xvzf "$1" --one-top-level && cd "$(basename "$1" .tar.gz)" || return 1 ;;
        *.tar.xz) tar -Jxvf "$1" --one-top-level && cd "$(basename "$1" .tar.xz)" || return 1 ;;
        *.bz2) bunzip2 "$1" ;;
        *.rar) unrar x "$1" && cd "$(basename "$1" .rar)" || return 1 ;;
        *.gz) gunzip "$1" ;;
        *.tar) tar xvf "$1" && cd "$(basename "$1" .tar)" || return 1 ;;
        *.tbz2) tar -xvjf "$1" && cd "$(basename "$1" .tbz2)" || return 1 ;;
        *.tgz) tar -xvzf "$1" && cd "$(basename "$1" .tgz)" || return 1 ;;
        *.zip) unzip "$1" && cd "$(basename "$1" .zip)" || return 1 ;;
        *.Z) uncompress "$1" && cd "$(basename "$1" .Z)" || return 1 ;;
        *.7z) 7z x "$1" && cd "$(basename "$1" .7z)" || return 1 ;;
        *) echo "Don't know how to extract \"$1\"..." ;;
        esac
    else
        echo "\"$1\" is not a valid file!"
    fi
}

# Generates a random password of a desired length (e.g. genpass 16)
function genpass() {
    if [ -z "$1" ]; then
        openssl rand -base64 20
    elif [[ "$1" =~ ^[0-9]+$ ]]; then
        openssl rand -base64 "$1"
    else
        echo "Error: Please provide a valid number for password length."
    fi
}

# Print a word from a certain column of a file.
# Example: fawk /path/to/file.txt 3 --> Print every 3rd word in each line
function fawk {
    if [ "$#" -ne 2 ]; then
        echo "Usage: fawk <input_file> <column_number>"
        return 1
    fi

    local input_file="$1"
    local column_number="$2"

    if [ ! -f "$input_file" ]; then
        echo "Error: File not found: $input_file"
        return 1
    fi

    awk -v col="$column_number" '{print $col}' "$input_file"
}

# Function to display IP addresses and their connection counts on port 80.
function ipview {
    local port=$1

    # Check if the input is a number
    if ! [[ $port =~ ^[0-9]+$ ]]; then
        echo "Error: Port must be a number"
        echo "Usage: ipview <port>"
        return 1
    fi

    netstat -anp | grep ":$port" | awk '{print $5}' | cut -d':' -f1 | sort | uniq -c | sort -n | sed -e 's/^ *//' -e 's/ *$//'
}

# For some reason, rot13 pops up everywhere
rot13() {
    if [ $# -eq 0 ]; then
        tr 'a-zA-Z' 'n-za-mN-ZA-M'
    else
        echo "$*" | tr 'a-zA-Z' 'n-za-mN-ZA-M'
    fi
}
