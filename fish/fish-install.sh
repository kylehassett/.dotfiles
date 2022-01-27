#!/bin/bash

echo "Setting up fish..."

echo /usr/local/bin/fish | sudo tee -a /etc/shells && chsh -s /usr/local/bin/fish

echo "Installing fisher and packages for it..."

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install edc/bass
fisher install dracula/fish

echo "Installing nvm..."
ln -s ~/.dotfiles/fish/nvm.fish ~/.config/fish/functions/nvm.fish

echo "Fish's done."
