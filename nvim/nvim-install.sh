#!/bin/zsh

echo "Starting neovim install"

echo "Ensure .config directory exists..."

mkdir -p ~/.config

echo "Linking all neovim config files..."

ln -s ~/.dotfiles/nvim ~/.config

echo "Creating log file for neovim mason, or else it'll throw a fit..."

touch ~/.cache/nvim/mason.log

echo "Neovim's done."
