#!/bin/bash

echo "Setting up zsh..."


echo "Checking for ~/.zshrc"
if [ -f ~/.zshrc ]; then
    echo ".zshrc already exists."
else
    echo "Creating ~/.zshrc"
    touch ~/.zshrc
fi


FILE_ALREADY_LINKED=$(grep -q 'source ~/.dotfiles/zsh/.zshrc' ~/.zshrc)

if [ $? -ne 0 ]; then
    echo "Linking .zshrc to ~/.dotfiles/zsh/.zshrc"
    echo "# The following source command was added to your ~/.zshrc file by github.com/kylehassett/.dotfiles; do not remove it & leave it at the bottom." >> ~/.zshrc
    echo "source ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc
else
    echo ".zshrc already linked to ~/.dotfiles/zsh/.zshrc"
fi


echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash


echo "Installing zplug..."
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh


echo "zsh is done."
