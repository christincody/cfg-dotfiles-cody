#=====================================================
#============    @cfsanderson .zshrc   ===============
#============    for @christincody     ===============
#=====================================================
export ZSH=/Users/cody/.oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

#====================    THEME    ====================
ZSH_THEME=amuse

#====================    STUFF    ====================
ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

# optional formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"


#====================  PLUGINS  ====================
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew chucknorris npm osx rand-quote web-search)


#====================  ALIASES  ====================

source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh


#====================  SSH  ====================
export SSH_KEY_PATH="~/.ssh/id_rsa"


# #====================  ALIASES  ====================
alias bbd='brew bundle dump -f'
alias be='bundle exec'
alias c='clear'
alias conf='/usr/bin/git --git-dir=/Users/cody/.cfg-dotfiles/ --work-tree=/Users/cody'
alias confloga='conf log --oneline --decorate --graph --all'
alias conflog='conf log'
alias confstat='conf status'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias st='speedtest'
alias lsa='ls -a'
alias tp='trash-put'
alias gohome='~ && ls -la'
alias notes='cd ~/Projects/Notes && code .'
alias vimrc='vim ~/.vimrc'

. $(brew --prefix asdf)/asdf.sh
