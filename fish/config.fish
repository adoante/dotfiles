if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Load environments
bass source $HOME/.cargo/env

bass source $HOME/.local/share/../bin/env

# Init shell tools
starship init fish | source

fzf --fish | source

set -x _ZO_ECHO 1
zoxide init fish | source

# Greeting
set -U fish_greeting ""

# alias

## Git
alias gs="git status"

alias gd="git diff"

alias ga="git add"
alias gc="git commit"

alias gp="git push"
alias gu="git pull"

alias gl="git log --all --graph --pretty=format:'%C(yellow)%h %C(cyan)%an %C(white)%ar %C(auto)%D %n%n%C(white)%s%n'"
alias gb="git branch -r"
alias gco="git checkout"

alias gi="git init"
alias gcl="git clone"

# File System
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
