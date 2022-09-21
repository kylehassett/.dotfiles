#!/bin/bash

echo "Setting up zsh..."


echo "Linking .zshrc..."
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc


echo "Installing nvm, installing node, and setting default node version..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install lts
nvm use lts
nvm alias default node


echo "Installing zplug..."
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh


echo "zsh is done."
