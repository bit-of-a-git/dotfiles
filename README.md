# Dotfiles

This repository contains my dotfiles, which include configurations for the command-line environment, aliases, and a custom prompt. When cloned and executed on a new machine, these dotfiles will help set up the environment according to my preferences.

## Getting Started

### Prerequisites

To use these dotfiles, you'll need:
- Git and stow installed on your machine
- Basic familiarity with the command line

### Installation

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/bit-of-a-git/dotfiles.git ~/.dotfiles
    ```

2. Navigate to the `dotfiles` directory:
    ```bash
    cd ~/.dotfiles
    ```

3. (Optional) Back up existing dotfiles to a backup folder:
    ```bash
    mkdir -p ~/old-dotfiles-backup
    cp -r ~/.bash* ~/.inputrc ~/old-dotfiles-backup/
    ```

4. Use GNU Stow to create symlinks for the dotfiles. For example:
    ```bash
    stow bash
    ```

## What's Included

### Bash Configuration

- `.bash_aliases` contains useful command aliases, some I found in various repos or articles and a few that I added myself.
- `.bash_exports` sets up colored man pages and PATH configurations, and enforces pip installations in virtual environments.
- `.bash_functions` provides useful shell functions like `mkd` (mkdir + cd), `targz` (create tar archives), `up` (navigate up directories), `xt` (extract archives), `genpass` (generate passwords), and more.
- `.bash_profile` ensures `.bashrc` is sourced for login bash shells.
- `.bash_prompt` is a custom prompt using gitstatus, which displays useful Git information when in a repository.
- `.bash_settings` configures shell behavior including history settings and spelling correction.
- `.bashrc` sources other files, global definitions if present, and calls the bash prompt.
- `.inputrc` includes system-wide inputrc settings, adds useful shortcuts for history searches, colours to file types, ignores case for auto completion, and disables the automatic execution of pasted commands containing new lines - an essential security feature in my opinion.
- `vimrc` contains my Vim configuration, which is currently a work in progress.

### Custom Prompt

The custom prompt includes:
- User and host information.
- Current working directory.
- Git repository status with information about branches, commits ahead and behind, untracked/unstaged files, and more.

### Using GNU Stow

GNU Stow automates the process of creating symlinks for the dotfiles:
- It creates symlinks in the home directory pointing to the files in this repository.
- This allows for easy management and updating of dotfiles.

## Customization

Feel free to modify the dotfiles to suit your preferences. Edit the `.bashrc` or `.bash_aliases` files to add or update aliases and configurations.

---

**Note:** Running the stow command may potentially overwrite existing dotfiles in your home directory. Proceed with caution or back up your existing configurations before running the command.
