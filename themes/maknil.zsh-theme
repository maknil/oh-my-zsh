function prompt_char(){
  local prompt=$(scm_char)

  if [[ "$prompt" == "" ]]; then
    prompt="%#"
  else
    prompt="$prompt " 
  fi

  echo $prompt 
}

#PROMPT='$(scm_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}$(prompt_char) %{$reset_color%}'
PROMPT='$(scm_prompt_info)%{$fg[yellow]%}$(prompt_char)%{$reset_color%} '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}:%n%f@%m%f'

ZSH_THEME_SCM_PROMPT_BASE_COLOR="%{$reset_color%}"
ZSH_THEME_SCM_PROMPT_PREFIX=""
ZSH_THEME_SCM_PROMPT_SUFFIX=""
ZSH_THEME_SCM_PROMPT_DIRTY="%{$fg[red]%}✘ %{$reset_color%}"
ZSH_THEME_SCM_PROMPT_CLEAN=" %{$reset_color%}"
ZSH_THEME_SCM_PROMPT_BRANCH_BEFORE="("
ZSH_THEME_SCM_PROMPT_BRANCH_AFTER=")"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER=""

