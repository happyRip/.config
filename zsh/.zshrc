# if tmux is executable and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
# [ -x "$(command -v tmux -u)" ] \
#   && [ -z "${TMUX}" ] \
#   && { tmux -u attach || tmux -u; } >/dev/null 2>&1

# Change prompt
# PROMPT='%B%F{240}%n@%m [%~]
# %(?.%F{green}→.%F{red}→)%f%b '
# PROMPT='%B%{$bg[red]%2~%}%{$reset_color%} %(?.%F{green}>.%F{red}>)%f%b '
PROMPT='%(?.%F{green}>.%F{red}>)%f%b '

# Run bfetch -> print minimal system information using pfetch
export BFETCH_INFO=pfetch
bfetch

# Enable colors
autoload -U colors && colors

# Fix some keys
autoload zkbd
[[ ! -f ${ZDOTDIR:-$HOME}/.zkbd/$TERM-$VENDOR-$OSTYPE ]] && zkbd
source ${ZDOTDIR:-$HOME}/.zkbd/$TERM-$VENDOR-$OSTYPE

[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char

## Git integration into prompt
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
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

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
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN

export PATH=${PATH}:/home/arrr/.local/bin/
export PATH="${PATH}:/home/abor/.local/bin"

export LANG=en_US.UTF-8

GITDIR=~/Documents/GitHub/

# Colorful cat
alias ccat="highlight -O ansi"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="${HOME}/.local/share/gem/ruby/3.0.0/bin:${PATH}"
source /usr/share/nvm/init-nvm.sh
