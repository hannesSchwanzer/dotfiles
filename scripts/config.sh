#!/bin/bash
shopt -s dotglob 

mkdir -p "$HOME/.config"

backup_if_exists() {
    local target="$1"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        local backup="${target}.old"
        echo " Backing up existing file: $target → $backup"
        mv "$target" "$backup"
    fi
}

for item in "$DOTFILES_DIR/config/"*; do
    target="$HOME/.config/$(basename "$item")"
    backup_if_exists "$target"
    ln -sfn "$item" "$target"
done

for item in "$DOTFILES_DIR/home/"*; do
    target="$HOME/$(basename "$item")"
    backup_if_exists "$target"
    ln -sfn "$item" "$target"
done

echo "All symlinks created successfully (backups saved as *.old)."
