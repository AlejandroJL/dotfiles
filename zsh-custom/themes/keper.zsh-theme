# ------------------------------------------------------------------------------
#          FILE:  keper.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  Victor Ortiz (kespers@gmail.com)
#       VERSION:  1.0.0
#    SCREENSHOT:
# ------------------------------------------------------------------------------
function toon {
  echo -n ""
}
local rvm=''
if [[ ! -z $(~/.rvm/bin/rvm-prompt v) && $(~/.rvm/bin/rvm-prompt v) != 1.8.7 ]]; then
  rvm='‹%{$fg[magenta]%}$(rvm-prompt v g)%{$reset_color%}›'
else
  rvm=''
fi
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

PROMPT='%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$reset_color%}
$(toon) '
ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[green]%}"

if [[ $(current_branch) = master* ]]; then
  ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
fi

if [[ $(current_branch) = features* ]]; then
  ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[yelow]%}"
fi

if [[ $(current_branch) = fix* ]]; then
  ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[magenta]%}"
fi

ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# display exitcode on the right when >0


RPROMPT="${return_code} ${rvm} %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"