HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_SPACE
bindkey -v
KEYTIMEOUT=1
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

export EDITOR=nvim
export VISUAL=nvim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export QT_QPA_PLATFORMTHEME=qt5ct

source ~/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.local/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.local/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# shell plugins
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# python virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source ~/.local/bin/virtualenvwrapper.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Alias
alias ls="ls --color=auto"

# kubectl alias
alias k="kubectl"
alias kgp="kubectl get pods"
alias kc="kubectx"
alias kns="kubens"

# ssh auth sock
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

