autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
autoload colors; colors

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt NO_HIST_BEEP
setopt PROMPT_SUBST

# Common environment variables
if [ -f ~/.myenv ] ; then
    . ~/.myenv
fi

# Alias definitions.
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

PROMPT_USER="%{%B%(!.$fg[red].$fg[yellow])%}%n%{$reset_color%}"
PROMPT_HOST="%{%B$fg[blue]%}%m%{$reset_color%}"
PROMPT_PATH="%{$fg[magenta]%}%4~%{$reset_color%}"
PROMPT_SIGN="%(!.#.$) "
PROMPT="${PROMPT_USER}@${PROMPT_HOST}:${PROMPT_PATH}${PROMPT_SIGN}"
export PROMPT

# Switch to "Emacs" mode for command-line editing
bindkey -e

# Backspace and Delete keys behavior
bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char
