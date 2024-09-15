#!/bin/bash

echo "Linking vscode files..."

rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

echo "Disabling apple press and hold to show accented characters in vscode..."
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
defaults write com.vscodium ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false

echo "Installing vscode extensions..."

cd vscode
while IFS= read -r line; do
    code --install-extension $line
done < extensions.txt
cd ~/.dotfiles

echo "Vscode's done."
