# ---- homebrew path----
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---- mise path ----
eval "$(mise activate zsh)"

# ---- pnpm path ----
export PNPM_HOME="/Users/athulanoop/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ---- add directory for custom commands/ scripts ----
export PATH="$PATH:$HOME/bin"

# ---- cargo path ----
. "$HOME/.cargo/env"
