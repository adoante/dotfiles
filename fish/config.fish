if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx CONDA_CHANGEPS1 false

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/adoante/miniconda3/bin/conda
    eval /home/adoante/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/adoante/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/adoante/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/adoante/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# Paths
set -gx PATH $PATH /opt/nvim /usr/local/go/bin /usr/local/

# Load Rust environment
bass source $HOME/.cargo/env

# Start npm and node
nvm use lts > /dev/null

# catmoji greeting"*** /ᐠ - ˕ -マ Ⳋ ***"
set -U fish_greeting ""
echo (set_color magenta)(/home/adoante/Repos/Untils/catmoji/catmoji.sh)(set_color normal)

# setup fzf
fzf --fish | source

# zoxide
set -x _ZO_ECHO '1'
zoxide init fish | source

# alias
alias bat="batcat"
alias fzf-bat="fzf --preview 'bat --style=numbers --color=always {}'"

## git 
alias gs="git status"

alias gd="git diff"

alias ga="git add"
alias gc="git commit"

alias gp="git push"
alias gu="git pull"

alias gl="git log --all --graph --pretty=format:'%C(yellow)%h %C(cyan)%an %C(white)%ar %C(auto)%D %n%n%C(white)%s%n'"
alias gb="git branch"
alias gco="git checkout"

alias gi="git init"
alias gcl="git clone" 

starship init fish | source
