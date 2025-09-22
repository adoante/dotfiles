if status is-interactive
    # Commands to run in interactive sessions can go here
end

status --is-interactive; and oh-my-posh init fish --config /home/adoante/dotfiles/ado.omp.json | source

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

# zoxide
zoxide init fish | source
set -x _ZO_ECHO = '1'


# Set up fzf
fzf_key_bindings
