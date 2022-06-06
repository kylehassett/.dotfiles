if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Neovide path setup
set PATH ~/.dotfiles/neovide/neovide/target/release/ $PATH

# Personalization
alias cl clear
alias ls "ls -Fla"
alias nvid "nvid --frameless --multigrid"
set EDITOR nvim
set VISUAL nvim

# Set default Node js version
nvm use lts

# Hook into direnv KEEP AT THE END OF THE FILE
direnv hook fish | source
