# Edit command in vim
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Search history with up and down arrows
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Better tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Prompt with git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
[ "$USER" = "root" ] && UCOLOR="%B%F{red}" || UCOLOR="%B%F{yellow}"
GREEN="%B%F{green}"
CLEAR="%f%b"
setopt PROMPT_SUBST
PROMPT='$UCOLOR%n$CLEAR@$GREEN%m$CLEAR %1~$vcs_info_msg_0_ %# '

