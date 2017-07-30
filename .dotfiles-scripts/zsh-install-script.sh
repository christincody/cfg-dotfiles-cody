zsh --version
echo "Expected result: 'zsh 4.3.9' or more recent"
echo $SHELL
echo "confirm expected result: '/bin/zsh' or similar"

# make ZSH the default shell 
chsh -s $(which zsh)
echo "===== Log out and login back again to use your new default shell. ====="
echo "===== Next Step: Install Oh-My-Zsh ====="
echo "===== curl -Lks <install script for Oh-My-Zsh> | bash ====="
