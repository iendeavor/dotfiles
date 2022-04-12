# system
export LANG=en_US.UTF-8

# zsh

## starship https://github.com/starship/starship
### brew install starship
eval "$(starship init zsh)"

## zsh config
export EDITOR='vim'

## vi-mode
### git clone https://github.com/jeffreytse/zsh-vi-mode.git $HOME/.config/zsh-vi-mode
source $HOME/.config/zsh-vi-mode/zsh-vi-mode.plugin.zsh

## zsh-syntax-highlighting
### git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.config/zsh-syntax-highlighting
source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## zsh-history-substring-search
### brew install zsh-history-substring-search
### echo 'source ...'
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# deno
# export DENO_INSTALL="$HOME/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"

# git
export GPG_TTY=$(tty)

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/Documents/packages/flutter/bin"

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# code Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
