#!/bin/bash
set -euo pipefail

export DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$DOTFILES_DIR/scripts/clone_repos.sh"
source "$DOTFILES_DIR/scripts/config.sh"
source "$DOTFILES_DIR/scripts/finish.sh"
