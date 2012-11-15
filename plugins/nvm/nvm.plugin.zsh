# NVM Wrapper

# Auto detect the NVM_DIR
if [[ ! -d "$NVM_DIR" ]]; then
  export NVM_DIR=~/.nvm
fi

. $ZSH/plugins/nvm/nvm.bash
