# ---------- PATH ----------
export PATH="/opt/homebrew/bin:$PATH"

# ---------- COMPLETION ----------
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# ---------- SMART TOOLS ----------
# zoxide (smart cd)
eval "$(zoxide init zsh)"


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ---------- PROMPT ----------
eval "$(starship init zsh)"

# ---------- PLUGINS ----------
# autosuggestions (ghost text)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept

# syntax highlighting (must be last plugin)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---------- ALIASES ----------
alias luna='~/Desktop/luna/luna_launch.sh'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# optional quality-of-life
alias ls="eza --icons"
alias ll="eza -lah --icons"
alias lt="eza --tree --level=2 --long --icons --git"
alias cat=bat
alias cl='clear'

# git
alias gst="git status"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gdiff="git diff"
alias gco="git checkout"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"

# navigation
cx() { cd "$@" && ll; }
fcd() { cd "$(find . -type d -not -path '*/.*' | fzf)" && ll; }
fv() { nvim "$(find . -type f -not -path '*/.*' | fzf)"; }

# bun completions
[ -s "/Users/cricky/.bun/_bun" ] && source "/Users/cricky/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias claude-mem='/Users/cricky/.bun/bin/bun "/Users/cricky/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/cricky/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
