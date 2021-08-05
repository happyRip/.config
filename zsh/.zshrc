# Add path to Go
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN

# Enable colors
autoload -U colors && colors

# Change prompt
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

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
bindkey -v
export KEYTIMEOUT=1

## Use vi keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

## Change cursor shape for different vi modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
  zle -K viins # initiate 'vi insert' as keymap (can be removed if 'bindkey -V' has been set elsewhere)
  echo -ne '\e[5 q'
}
zle -N zle-line-init
echo -ne '\e[5 q' # use beam shaped cursor on startup
preexec() { echo -ne '\e[5 q' ;} # use beam shaped cursor for each new prompt

# Use la to list all files (with dot files)
alias la='ls -a'

# Use cls to combine clear and ls
alias cls='clear && ls'

# Use cla to combine clear and ls -a
alias cla='clear && ls -a'

# Load syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
