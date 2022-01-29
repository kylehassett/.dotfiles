#!/bin/sh

echo "Bootstraping kylehassett's dotfiles"

/bin/bash ./homebrew/homebrew-install.sh

echo "Working with each program's dotfile now..."

/bin/bash ./git/git-install.sh
/bin/bash ./vscode/vscode-install.sh
/bin/bash ./neovim/neovim-install.sh
/bin/bash ./neovide/neovide-install.sh
/bin/bash ./fish/fish-install.sh

echo "Checking for nvm and node"

if [ ! -d "~/.nvm"]
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi

echo "Ok done, steps that you have to do now..."

echo "- iTerm2     - Set dracula as theme, JetBrains Mono as the font, and 13 as the font size (Optional: Repeat steps for Terminal app)."
echo "- XCode      - Sign into app store, download, then install command line tools"
echo "- Spectacle  - Change the keyboard shortcuts"
echo "- Authy      - Sign in and setup"
echo "- Bitwarden  - Sign in and setup"
echo "- Chrome     - Sign in and setup"
echo "- Be Focused - Download and configure"
