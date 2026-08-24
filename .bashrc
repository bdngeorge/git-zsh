# .bashrc

/c/Windows/System32/chcp.com 65001 > /dev/null 2>&1

# Use ZSH - Keep BASHRC as is below for easy switch
if [ -t 1 ]; then
    exec zsh
fi

# Source global definitions

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi 

export PATH

# Custom prompt with full path and git branch
export PS1='\u@\h \w$(__git_ps1 " (%s)") $ '

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Start ssh-agent silently if not already running
if [ -z "$SSH_AUTH_SOCK" ] || [ -S "$SSH_AUTH_SOCK" ]; then
    ssh-add ~/.ssh/id_ed25519 >/dev/null 2>&1
fi
