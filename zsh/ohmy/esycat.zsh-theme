# Git status
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Define prompt components
PROMPT_USER="%{%(!.$fg_bold[red].$fg_bold[yellow])%}%n%{$reset_color%}" # username turns red if the current user is root
PROMPT_HOST="%{$fg_bold[blue]%}%m%{$reset_color%}"
PROMPT_WHOAMI="${PROMPT_USER}${SSH_TTY:+@${PROMPT_HOST}}"
PROMPT_PATH="%{$fg[magenta]%}%4~%{$reset_color%}"
PROMPT_SIGN="%{%(?.$fg_bold[green].$fg_bold[red])%}❯%{$reset_color%}" # prompt turns red if the last command didn't exit successfully
PROMPT='${PROMPT_WHOAMI} ${PROMPT_PATH} ${PROMPT_SIGN} '

RPS1='%{$fg[white]%}$(git_prompt_info)%{$reset_color%}'
