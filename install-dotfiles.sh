#!/bin/bash

ORIGINAL_DIR=$(pwd)

is_stow_installed() {
    pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
    echo "Install stow first"
    exit 1
fi

cd /home/adoante

echo "Removing default configs"
rm -rf ~/.config/nvim ~/.config/starship.toml ~/.config/git/ ~/.config/kitty ~/.config/fish

cd "$ORIGINAL_DIR"

echo "Stow configs"
stow --verbose=2 fish
stow --verbose=2 git
stow --verbose=2 kitty
stow --verbose=2 nvim
stow --verbose=2 starship

cd "$ORIGINAL_DIR"
