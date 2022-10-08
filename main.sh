# Load colors
autoload -U colors && colors
export C_CLEAR="$reset_color"
export C_GRAY="%F{250}"
export C_DARKGRAY="%F{237}"
export C_GREEN="%F{072}"
export C_LBLUE="%F{105}"
export C_RED="%F{124}"

# Configuration
export EDITOR="nano"
export HERA_SECRET_TOKEN="secret"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_NO_ENV_HINTS="1"
export NEXT_TELEMETRY_DISABLED="1"
export REDWOOD_DISABLE_TELEMETRY="1"
export STORYBOOK_DISABLE_TELEMETRY="1"

# customize the prompt
source ~/.prompt/git-prompt.sh
precmd () { __git_ps1 "$C_GRAY%1d [$C_GREEN$(docker context show)$C_GRAY] " "$C_DARKGRAY» $reset_color" }

# zsh plugins
source ~/.antigen.zsh
antigen bundle lukechilds/zsh-nvm
antigen apply

# initialize rustup tooling
source "$HOME/.cargo/env"

# initialize Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Open the software directory
cd ~/Software/

# bun completions
[ -s "/Users/ryan/.bun/_bun" ] && source "/Users/ryan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
