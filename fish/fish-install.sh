#!/bin/bash

echo "Setting up fish..."

echo /usr/local/bin/fish | sudo tee -a /etc/shells && chsh -s /usr/local/bin/fish

echo "Installing fisher, linking fish_plugins, and installing plugins..."

curl -sL https://raw.githubusercontent.com/orgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisherj
ln -s ~/.dotfiles/fish/fish_plugins ~/.config/fish/fish_plugins
fisher update

echo "Installing node with nvm"
nvm install lts
nvm use lts

echo "Fish's done."
