if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Personalization
function cl
    clear && printf '\e[3J'
end
if not test -e ~/.config/fish/functions/cl.fish
    funcsave cl
end

function ff
    rg --files --hidden -g "!.git/" -g "!.github/" | fzf-tmux -p --reverse | xargs nvim
end
if not test -e ~/.config/fish/functions/ff.fish
    funcsave ff
end

function la
    ls -Fla
end
if not test -e ~/.config/fish/functions/la.fish
    funcsave la
end

function nvid
    neovide --multigrid $argv
end
if not test -e ~/.config/fish/functions/nvid.fish
    funcsave nvid
end

set EDITOR nvim
set VISUAL nvim

# Set default Node js version
set --universal nvm_default_version v16.16.0

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc' ]; . '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc'; end

# Hook into direnv KEEP AT THE END OF THE FILE
direnv hook fish | source
