## ALIAS

alias cdc="cd $HOME/code"
alias cls="clear"


# Minimal zsh configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH="$HOME/.nvm/versions/node/v20.*/bin:$PATH"
export PATH="$PATH:/opt/homebrew/bin"
export TMPDIR=$HOME/tmp
mkdir -p $HOME/tmp
