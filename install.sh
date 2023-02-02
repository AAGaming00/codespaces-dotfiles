#!/bin/sh
# Kill the bash shell that automatically opened
pgrep -f "/usr/bin/bash --init-file" | xargs kill -SIGINT
# Clone dotfiles from Gitea
curl -fsLS git.io/chezmoi | sh -s -- init --apply https://git.catvibers.me/aa/dotfiles
# Begin dotfiles setup
zsh .zsh/.zshrc
