NEWLINE=$'\n'
local ret_status="%(?:%{$fg[green]%}» :%{$fg[red]%}😱  )"
zle_highlight=(default:bold,fg=blue)

PROMPT='${NEWLINE}%{$fg_bold[blue]%}%~ ${ret_status}%{$reset_color%}'
RPROMPT='$(git_prompt_info)$(git_prompt_status)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ☯"

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%} 😱"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[red]%} 🐮"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%} ❤"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} 😶"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%} ⚗"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%} ⚠"
