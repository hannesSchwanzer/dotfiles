#!/bin/bash

# Reload tmux configuration and install plugins
tmux new-session -d -s temp || exit 1
tmux source-file ~/.tmux.conf
tmux new-session -d 'tmux source-file ~/.tmux.conf; tmux run-shell ~/.tmux/plugins/tpm/bin/install_plugins'
tmux kill-session -t temp
