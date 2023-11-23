#!/bin/sh
HISTSIZE=100000
SAVEHIST=100000
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.local/share/neovim/bin":$PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/.miniconda/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.miniconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
