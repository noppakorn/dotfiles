HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

bindkey -v
KEYTIMEOUT=1

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

eval "$(starship init zsh)"

# Alias
alias ls="ls --color=auto"
alias chulavpn="sudo openconnect --protocol=anyconnect vpn.chula.ac.th --user 6330258021"

export PATH=~/.local/bin:$PATH
export EDITOR=nvim
export VISUAL=nvim
export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

export WORKON_HOME=$HOME/.virtualenvs
source ~/.local/bin/virtualenvwrapper.sh

source ~/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.local/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

case "$TERM" in (rxvt|rxvt-*|st|st-*|*xterm*|(dt|k|E)term)
    local term_title () { print -n "\e]0;${(j: :q)@}\a" }
    precmd () {
      local DIR="$(print -P '[%c]%#')"
      term_title "$DIR" "zsh"
    }
    preexec () {
      local DIR="$(print -P '[%c]%#')"
      local CMD="${(j:\n:)${(f)1}}"
      term_title "$DIR" "$CMD"
    }
  ;;
esac
