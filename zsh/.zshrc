# Change prompt
PROMPT=' $ '

# Run bfetch -> print minimal system information using pfetch
export BFETCH_INFO=pfetch
bfetch

# Enable colors
autoload -U colors && colors

# Git integration into prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# History in cashe directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cashe/zsh/history

# Basic autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Turn off beep on error
unsetopt beep

# vi mode
# bindkey -v
# export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward

# Load dracula theme for syntax highlighting
source ~/.config/zsh/.dracula

# Load syntax highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

# clipcat integration
if type clipcat-menu >/dev/null 2>&1; then
    alias clipedit=' clipcat-menu --finder=builtin edit'
    alias clipdel=' clipcat-menu --finder=builtin remove'

    bindkey -s '^\' "^Q clipcat-menu --finder=builtin insert ^J"
    bindkey -s '^]' "^Q clipcat-menu --finder=builtin remove ^J"
fi

# Fix ls colors
alias ls='ls --color=auto'

# quick vim 
alias v='nvim'

# tmux with UTF-8
alias tmux="tmux -u"

# Go
export GOROOT=/usr/lib/go
export GOPATH=${HOME}/.go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN

export PATH=${PATH}:${HOME}/.local/bin/

export LANG=en_US.UTF-8

GITDIR=~/Documents/GitHub/

