
# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/home/Lixm/.micromamba/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/Lixm/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/Lixm/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/Lixm/micromamba/etc/profile.d/conda.sh" ]; then
        . "/home/Lixm/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/home/Lixm/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

