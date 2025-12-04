# Reevaluate the prompt string each time it's displaying a prompt
eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word

setopt prompt_subst
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit && compinit
source <(carapace _carapace)

# Eza
export EZA_CONFIG_DIR=~/.config/eza
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"

# Homebrew
alias bu='brew uninstall'
alias bs='brew search'
alias bif='brew install'
alias bic='brew install --cask'
alias bli='brew list --installed-on-request'
alias blif='brew list --installed-on-request --formulae -1'
alias blic='brew list --casks -1'
alias bup='brew update && brew upgrade && brew cleanup'

# Serverless
alias slsdf='sls deploy function -f'
alias slsif='sls invoke -f'
alias slslf='sls logs -f'

# Misc
alias cl='clear'
alias src='source ~/.zshrc'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" use --lts # This loads nvm, without auto-using the default version

export EDITOR='code --wait'

eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
