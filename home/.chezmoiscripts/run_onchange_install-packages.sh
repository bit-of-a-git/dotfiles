#!/usr/bin/env sh

brew bundle --file=/dev/stdin <<EOF
	brew "antidote"
	brew "bat"
	brew "bbrew"
	brew "carapace"
	brew "direnv"
	brew "dysk"
	brew "eza"
	brew "fd"
	brew "lazydocker"
	brew "lazygit"
	brew "ripgrep"
	brew "shfmt"
	brew "tealdeer"
	brew "vivid"
	brew "zoxide"
EOF
