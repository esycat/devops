autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
autoload -Uz vcs_info; vcs_info
autoload -U colors; colors

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FCNTL_LOCK
setopt NO_HIST_BEEP
setopt PROMPT_SUBST

HISTFILE="$HOME/.history"
HISTSIZE=SAVEHIST=1024

# Common environment variables
test -r ~/.envrc && . ~/.envrc

# Alias definitions
test -r ~/.aliases && . ~/.aliases

# Prompt
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

