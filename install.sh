#!/bin/bash

DOTFILES_DIR=~/dotfiles
CONFIGS=("zsh" "nvim" "tmux" "vscode" "ideavim")

cd $DOTFILES_DIR

for config in "${CONFIGS[@]}"; do
    echo "Stowing $config..."
    stow -D $config  # Unstow (if any existing links)
    stow $config     # Stow the current config
done

echo "All dotfiles stowed!"
