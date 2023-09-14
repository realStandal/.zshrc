# Load colors
autoload -U colors && colors
export C_CLEAR="$reset_color"
export C_GRAY="%F{255}"
export C_DARKGRAY="%F{245}"
export C_GREEN="%F{072}"
export C_LBLUE="%F{105}"
export C_RED="%F{124}"

# Configuration
export EDITOR="nano"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_NO_ENV_HINTS="1"
export NEXT_TELEMETRY_DISABLED="1"
export REDWOOD_DISABLE_TELEMETRY="1"
export STORYBOOK_DISABLE_TELEMETRY="1"

# customize the prompt
source ~/.terminal/prompt.sh

# rustup
source "$HOME/.cargo/env"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# start SSH Agent
ssh-agent
ssh-add

#
cd ~/Software/
clear
