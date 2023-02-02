#!/bin/sh
chsh -s zsh
curl -fsLS git.io/chezmoi | sh -s -- init --apply https://git.catvibers.me/aa/dotfiles
