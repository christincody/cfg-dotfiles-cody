#===============================================================================
#                                    __
#                        ____  _____/ /_  __________
#                       /_  / / ___/ __ \/ ___/ ___/
#                        / /_(__  ) / / / /  / /__
#                       /___/____/_/ /_/_/   \___/
#
#===============================================================================

# Path to my oh-my-zsh installation
export ZSH="/Users/cody/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"

ZSH_THEME="agnoster"

setopt autocd
setopt noclobber

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

plugins=(
    git
    npm
    osx
    web-search
    zsh-completions
    zsh-syntax-highlighting
)

# custom folder
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# aliases moved to ~/.oh-my-zsh/custom/aliases.zsh

source $ZSH/oh-my-zsh.sh

# ASDF
. /usr/local/opt/asdf/asdf.sh
neofetch
