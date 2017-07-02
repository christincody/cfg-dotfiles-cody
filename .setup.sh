git init --bare $HOME/.cfg-dotfiles
alias dotconfig='/usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME'
dotconfig dotconfig --local status.showUntrackedFiles no
echo "alias dotconfig='/usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
