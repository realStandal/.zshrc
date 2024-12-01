# Load colors
autoload -U colors && colors
export C_CLEAR="$reset_color"
export C_GRAY="%F{250}"
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

export GIT_PS1_SHOWCOLORHINTS="true"
export GIT_PS1_SHOWDIRTYSTATE="true"
export GIT_PS1_SHOWUNTRACKEDFILES=""
export GIT_PS1_STATESEPARATOR=""

export CMAKE_OSX_SYSROOT="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"

# Initialize the custom prompt
source ~/.terminal/prompt.sh
# [$C_GREEN$(docker context show)$C_GRAY]
precmd () { __git_ps1 "$C_GRAY%1d " "$C_DARKGRAY» $reset_color" }

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$PATH:/opt/homebrew/opt/libpq/bin"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# start SSH Agent
ssh-agent
ssh-add

#
export PATH="$PATH:/Users/$(whoami)/.bin"
cd ~/Software/
clear
