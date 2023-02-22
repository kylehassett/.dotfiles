#!/bin/bash

echo "Setting up zsh..."


echo "Linking .zshrc..."
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc


echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash


echo "Installing zplug..."
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh


echo "zsh is done."
