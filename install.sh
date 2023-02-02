#!/bin/sh
# Kill the zsh shell that automatically opened
#pgrep -f "/usr/bin/zsh -i" | xargs kill -SIGTERM
# Clone dotfiles from Gitea
curl -fsLS git.io/chezmoi | sh -s -- init --apply https://git.catvibers.me/aa/dotfiles
# Begin dotfiles setup
zsh .zsh/.zshrc
