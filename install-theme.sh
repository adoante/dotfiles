#!/bin/bash

echo "Installing Vauge Ado Theme"
omarchy-theme-install https://github.com/adoante/vague-ado
echo "Setting Theme to Vague Ado"
omarchy-theme-set vague-ado

echo "Installing FiraCode Nerd Font"
sudo pacman -S --needed --noconfirm ttf-firacode-nerd 

echo "Setting Font to FiraCode Nerd Font"
omarchy-font-set "FiraCode Nerd Font" &> /dev/null
