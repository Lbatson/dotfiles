# Autocomplete
autoload -Uz compinit && compinit -u

# Vim mode zsh
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
