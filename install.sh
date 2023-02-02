#!/bin/sh
# Kill the zsh shell that automatically opened
pgrep -f "/usr/bin/zsh" | xargs kill -SIGINT
# Clone dotfiles from Gitea
curl -fsLS git.io/chezmoi | sh -s -- init --apply https://git.catvibers.me/aa/dotfiles
# Begin dotfiles setup
zsh .zsh/.zshrc
