if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Personalization
alias cl clear
alias ls "ls -Fla"
alias nvid "neovide --multigrid"
set EDITOR nvim
set VISUAL nvim

# Set default Node js version
set --universal nvm_default_version v16.16.0

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/kylehassett/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc' ]; . '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc'; end

# Hook into direnv KEEP AT THE END OF THE FILE
direnv hook fish | source
