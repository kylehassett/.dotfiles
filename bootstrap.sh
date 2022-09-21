#!/bin/zsh

echo "Bootstraping kylehassett's dotfiles"

/bin/zsh ./homebrew/homebrew-install.sh


echo "Working with each program's dotfile now..."

/bin/zsh ./git/git-install.sh
/bin/zsh ./zsh/zsh-install.sh
/bin/zsh ./vscode/vscode-install.sh
/bin/zsh ./neovim/neovim-install.sh
/bin/zsh ./neovide/neovide-install.sh


echo "Ok done, steps that you have to do now...\n"

echo "- Dracula    - Setup Dracula for terminal and iTerm2, each file can be found in the zsh folder of this dotfile repo."
echo "- Warp       - Install from https://warp.dev (It's not available via homebrew yet), set dracula as theme, JetBrains Mono as the font, and 13 as the font size (Optional: Repeat steps for Terminal app)."
echo "- XCode      - Sign into app store, download, then install command line tools, setup vim commands."
echo "- Spectacle  - Change the keyboard shortcuts"
echo "- Authy      - Sign in and setup"
echo "- Bitwarden  - Sign in and setup"
echo "- Chrome     - Sign in and setup"
echo "- Be Focused - Download and configure"
