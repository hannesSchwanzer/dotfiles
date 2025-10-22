#!/bin/bash

# Cloning neovim
NVIM_REPO="hannesSchwanzer/nvim"

echo -e "\nCloning from: https://github.com/${NVIM_REPO}.git"
rm -rf "${DOTFILES_DIR}/config/nvim"
git clone "https://github.com/${NVIM_REPO}.git" "${DOTFILES_DIR}/config/nvim" >/dev/null

# Install TPM (Tmux Plugin Manager) if it's not already installed
echo "Cloning TPM..."
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm" >/dev/null
else
  echo "TPM already installed."
fi
