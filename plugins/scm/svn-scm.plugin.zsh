function scm_in_svn(){
  if [[ -d .svn ]]; then
  echo 1
  fi
}

function scm_svn_branch(){
  local svn_root=`svn info | sed -n 's/Repository\ Root:\ .*\///p'`
  local branch=`svn info | sed -n "s/URL:\ .*$svn_root\///p"`

  if [[ "${branch:0:5}" == "trunk" ]]; then
  echo "trunk"
  elif [[ "${branch:0:8}" == "branches" ]]; then
  branch=${branch#branches}
  branch=${branch#/}
  branch=${branch%%/*}
  echo $branch
  fi
}

function scm_svn_dirty() {
  if [[ "$(scm_in_svn)" != "" ]]; then
    s=$(svn status|grep -E '^\s*[ACDIM!?L]' 2>/dev/null)
    if [ $s ]; then 
      echo $ZSH_THEME_SCM_PROMPT_DIRTY
    else 
      echo $ZSH_THEME_SCM_PROMPT_CLEAN
    fi
  fi
}

