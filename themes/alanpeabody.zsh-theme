
local user='%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
# https://superuser.com/questions/1108413/zsh-prompt-with-current-working-directory/1108504#:~:text=current%20path%20(%251d).-,Share,-Improve%20this%20answer
local pwd='%{$fg[blue]%}%1d%{$reset_color%}'

local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

PROMPT="${user} ${pwd} %% "
RPROMPT="${return_code} ${git_branch} \$(ruby_prompt_info)"

# # https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
# NEWLINE=$'\n'
# DATE=$( date +"[%Y-%m-%d %H:%M:%S]" )
# PROMPT="${NEWLINE} %F{cyan}[%(!.%F{red}.%F{cyan})%n%F{cyan}@%m %F{cyan}%1~] %# %F{reset} "
