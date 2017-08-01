#=====================================================
#============    @cfsanderson .zshrc   ===============
#=====================================================
export ZSH=/Users/caleb/.oh-my-zsh


#====================    THEME    ====================
ZSH_THEME=amuse


#====================    STUFF    ====================
ENABLE_CORRECTION="true"

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


#====================  ALIASES  ====================
alias cfg='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias be='bundle exec'
alias bbd='brew bundle dump -f'
alias jsfast='bundle exec jekyll serve --watch --limit_posts 1'
alias jsslow='bundle exec jekyll serve --watch --config _config_dev.yml'


#====================    NVM    ====================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#====================    RBENV    ====================
eval "$(rbenv init -)"


#====================    TODOOZ    ====================
# TODO - Move aliases to ZSH_CUSTOM folder ???
# TODO - Move plugins to ~/.oh-my-zsh/custom/plugins/ ???
