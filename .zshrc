eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
if ! (( $+commands[eza] )); then
  print "zsh-eza-plugin: eza not found on path. Please install eza before using this plugin." >&2
  return 1
fi

# general use aliases 
alias ls='eza' # just replace ls by exa and allow all other exa arguments
alias l='ls -lbF' #   list, size, type
alias ll='ls -la' # long, all
alias llm='ll --sort=modified' # list, long, sort by modification date
alias la='ls -lbhHigUmuSa' # all list
alias tree='eza --tree' # tree view
alias lS='eza -1' # one column by just names
alias psg='ps -ax | rg'
export EDITOR='nvim'
alias sptd='brew services restart spotifyd'
alias zl='zellij'
alias vim='nvim'

# thefuck
eval $(thefuck --alias)

# git alias for dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/Users/alexjbuck/.local/bin:$PATH"

. "$HOME/.cargo/env"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/alexjbuck/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
