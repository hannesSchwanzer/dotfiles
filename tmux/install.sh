#!/bin/bash

# Install TPM (Tmux Plugin Manager) if it's not already installed
echo "Cloning TPM..."
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
else
  echo "TPM already installed."
fi

# Reload tmux configuration and install plugins
echo "Reloading tmux config and installing plugins..."
tmux source-file ~/.tmux.conf
tmux new-session -d 'tmux source-file ~/.tmux.conf; tmux run-shell ~/.tmux/plugins/tpm/bin/install_plugins'

echo "Tmux setup complete. Plugins are being installed. Press <prefix> + I if needed."

