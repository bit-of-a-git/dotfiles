# Dotfiles

This repository contains my dotfiles, which include configurations for Bash and Zsh shells. The aim of this repo is to provide a set of configurations which can be used on both personal and work machines, and on both Linux and MacOS. When cloned and executed on a new machine, these dotfiles will help set up the environment according to my preferences.

## Getting Started

### Prerequisites

To use these dotfiles, you'll need:
- Git and chezmoi installed on your machine
- Basic familiarity with the command line

### Installation

1. Use the chezmoi init command to pull this repository to your machine:
    ```bash
    chezmoi init https://github.com/$GITHUB_USERNAME/dotfiles.git
    ```

2. Check what changes that chezmoi will make to your home directory by running:
    ```bash
    chezmoi diff
    ```

3. If you are happy with the changes that chezmoi will make then run:
    ```bash
    chezmoi apply -v
    ```

## What's Included

This repo is a work in progress as I migrate from stow to chezmoi, experiment with new tools, and try to improve the experience of moving between my MacOS work laptop and Linux personal one. A basic overview of what is included is below, but the locations and files may change over time.

- `home` contains my dotfiles, to keep the repo tidy. It includes:
    - A `p10k` symlink so that changes from the `p10k configure` tool are trackable
    - A `.zsh_plugins` file for Antidote plugins. This should be used for `zsh`-specific tools, whenever possible
    - An `.inputrc` for readline behaviour
    - Basic `.gitconfig` settings, which may be added to over time
- `home/dot_config/` contains `bash`, `zsh`, and `shared_shell` config folders. In each case, these are non-standard files that are sourced from `.zshrc` or `.bashrc` in `~`. They are kept in `.config/` to try and keep the home directory tidy.
    - The `bash` folder contains a custom prompt using `gitstatus`, which displays useful Git information when in a repository, and various `bash`-specific settings
    - The `shared_shell` folder contains shared configurations for `bash` and `zsh`
    - The `zsh` folder contains my `antidote` and completion setup, in addition to `zsh`-specific settings
- `home/dot_vim/` contains my Vim configuration.

---

**Note:** Running chezmoi commands may potentially overwrite existing dotfiles in your home directory. Proceed with caution or back up your existing configurations before running the command.
