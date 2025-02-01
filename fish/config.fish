if status is-interactive
    # FZF Configurations
    set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
    set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    set -gx FZF_DEFAULT_OPTS "--height 50% --layout=reverse --border --margin=1 --padding=1"

    # Configure key bindings
    fzf_configure_bindings --directory=\ct --git_status=\cs --history=\cr --variables=\cv --processes=\cp

    # Add in preview windows to fzf behaviors
    set fzf_preview_dir_cmd exa --all --color=always # use exa if you have it installed
    set fzf_preview_file_cmd bat --style=numbers --color=always
end


set -gx EDITOR nvim
set -gx VISUAL nvim

# Disable the fish greeting message
set fish_greeting ""

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Clear line on CTRL + C
bind --preset \cC cancel-commandline


# `ls` → `ls -laG` abbreviation
abbr -a -g ls ls -laG
bind \cZ zellij

# `ls` → `exa` abbreviation
# Requires `brew install exa`
if type -q exa
    abbr --add -g ls 'exa --long --classify --all --header --git --no-user --tree --level 1'
end

abbr -a -g d "cd ~/Desktop"
