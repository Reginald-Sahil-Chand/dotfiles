# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Created by Reginald Sahil Chand on the 10th of June 2023
# --------------------------------------------------------

# Configurations for oh-my-posh
# -----------------------------

# Visit "https://ohmyposh.dev/" to setup oh-my-posh for linux

# Installation
# ------------
# sudo sh -c "$(curl -fsSL https://ohmyposh.dev/install.sh)"

# Custom Themes
# ------------
# To set custom themes visit "https://ohmyposh.dev/docs/themes", choose a theme, open on github, copy the raw file, create a folder with your prefered name and create the file example touch atomic.omp.json and then link the path to the below execution

# Execution
# ---------
eval "$(oh-my-posh init zsh --config ~/OhMyPoshThemes/atomic.omp.json)"

# Custom Alias
# ------------
alias ls="ls -la"
alias reboot="sudo reboot"
alias shutdown="shutdown now"
alias clearhistory="fc -p"
