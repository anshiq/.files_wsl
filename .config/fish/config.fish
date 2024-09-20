# Cargo
# test -f "$HOME/.cargo/env"; and source "$HOME/.cargo/env"

# NPM packages
fish_add_path ~/.npm-packages/bin

# Home bin directory
fish_add_path $HOME/.bin

# Local bin directory
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.rvm/bin

# Go
set -gx GOPATH $HOME/.go
fish_add_path $GOPATH/bin

# Set the default editor
set -gx EDITOR nano

# Set the default pager
set -gx PAGER less

# Configure colors for ls command
set -gx LSCOLORS gxfxcxdxbxegedabagacad

#temuxifier
fish_add_path $HOME/.tmuxifier/bin

# Aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Functions
function mkcd
    mkdir -p $argv[1] && cd $argv[1]
end

# Greeting
function fish_greeting
    echo ""
end

# Enable Vi mode (optional, remove if you prefer Emacs keybindings)
fish_vi_key_bindings

# Source any local configurations (create this file for machine-specific settings)
if test -f ~/.config/fish/local.fish
    source ~/.config/fish/local.fish
end


# if not set -q VSCODE_SHELL
#     cd /mnt/c/Users/anshi/OneDrive/Desktop
# end
