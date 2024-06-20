# system
export LANG=en_US.UTF-8

export EDITOR='vim'


# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

## starship
brew list starship 1>/dev/null 2>/dev/null || brew install starship
eval "$(starship init zsh)"

## zsh-history-substring-search
brew list zsh-history-substring-search 1>/dev/null 2>/dev/null || brew install zsh-history-substring-search
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

## nvm
brew list nvm 1>/dev/null 2>/dev/null || brew install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# zsh

## vi-mode
[ ! -d "$HOME/.config/zsh-vi-mode" ] && git clone https://github.com/jeffreytse/zsh-vi-mode.git $HOME/.config/zsh-vi-mode
source $HOME/.config/zsh-vi-mode/zsh-vi-mode.plugin.zsh

## zsh-syntax-highlighting
[ ! -d "$HOME/.config/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.config/zsh-syntax-highlighting
source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# git
export GPG_TTY=$(tty)


# code Visual Studio Code
export VSCODE_PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$VSCODE_PATH$PATH"
