# Aliases
alias resource='source $HOME/.bash_profile'
alias dotconfig='usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME'
alias name='curl -Lks http://bit.do/cfsanderson | bash'

# make zsh the default shell
export SHELL=`which zsh`
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
