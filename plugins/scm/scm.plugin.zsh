# svn supports
. $ZSH/plugins/scm/svn-scm.plugin.zsh

# git supports
. $ZSH/plugins/scm/git-scm.plugin.zsh

# SCM symbols
ZSH_THEME_GIT_CHAR='±'
ZSH_THEME_HG_CHAR='☿'
ZSH_THEME_SVN_CHAR='⑆'

function scm_char() {
  if [[ $(scm_in_git) != "" ]]; then
    echo $ZSH_THEME_GIT_CHAR
  elif [[ $(scm_in_svn) != "" ]]; then
    echo $ZSH_THEME_SVN_CHAR
  fi
}

# get the name of the branch we are on
function scm_prompt_info() {
  echo "$ZSH_THEME_SCM_PROMPT_BASE_COLOR$ZSH_THEME_SCM_PROMPT_PREFIX\
$ZSH_THEME_SCM_PROMPT_BASE_COLOR$(scm_branch)\
$ZSH_THEME_SCM_PROMPT_BASE_COLOR$(scm_dirty)\
$ZSH_THEME_SCM_PROMPT_BASE_COLOR$ZSH_THEME_SCM_PROMPT_SUFFIX\
$ZSH_THEME_SCM_PROMPT_BASE_COLOR"
}

# Checks if working tree is dirty
function scm_dirty() {
  if [[ "$(scm_in_git)" != "" ]]; then
    echo $(scm_git_dirty)
  elif [[ "$(scm_in_svn)" != "" ]]; then
    echo $(scm_svn_dirty)
  fi
}

# get branch name
function scm_branch(){
  local branch=""

  if [[ "$(scm_in_git)" != "" ]]; then
    branch=$(scm_git_branch)
  elif [[ "$(scm_in_svn)" != "" ]]; then
    branch=$(scm_svn_branch)
  fi

  if [[ "$branch" != "" ]]; then
    branch="$ZSH_THEME_SCM_PROMPT_BRANCH_BEFORE$branch$ZSH_THEME_SCM_PROMPT_BRANCH_AFTER"
  fi
  echo $branch
}

