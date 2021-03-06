# Aliases
alias resource='source $HOME/.bash_profile'
alias cfg='usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME'

# make zsh the default shell
export SHELL=`which zsh`
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l


# added by Anaconda3 5.0.1 installer
export PATH="/Users/caleb/anaconda3/bin:$PATH"
