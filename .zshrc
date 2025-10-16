# ============================================
# OH MY ZSH CONFIGURATION
# ============================================

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme - Powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  npm
  yarn
  node
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ============================================
# PERSONAL CONFIGURATION
# ============================================

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH Configuration
export PATH="$HOME/.nvm/versions/node/v20.*/bin:$PATH"
export PATH="$PATH:/opt/homebrew/bin"

# Temporary Directory
export TMPDIR=$HOME/tmp
mkdir -p $HOME/tmp

# Herd injected PHP binary
export PATH="/Users/pedro.jimenez/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP configurations
export HERD_PHP_84_INI_SCAN_DIR="/Users/pedro.jimenez/Library/Application Support/Herd/config/php/84/"
export HERD_PHP_83_INI_SCAN_DIR="/Users/pedro.jimenez/Library/Application Support/Herd/config/php/83/"
export HERD_PHP_82_INI_SCAN_DIR="/Users/pedro.jimenez/Library/Application Support/Herd/config/php/82/"

# LM Studio CLI
export PATH="$PATH:/Users/pedro.jimenez/.lmstudio/bin"

# ============================================
# ALIASES
# ============================================

# General Aliases
alias cdc="cd $HOME/code"
alias cls="clear"

# SaaS Vue Aliases
alias saas="cursor /Users/pedro.jimenez/code/one-front-app/.vscode/vue.code-workspace"
alias saas-root="cd /Users/pedro.jimenez/code/one-front-app"
alias saas-vue="cd /Users/pedro.jimenez/code/one-front-app/Web/saas-vue"

# ============================================
# POWERLEVEL10K CONFIGURATION
# ============================================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
