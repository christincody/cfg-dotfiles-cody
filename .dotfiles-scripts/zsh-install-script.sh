zsh --version
echo "Expected result: 'zsh 4.3.9' or more recent"
echo $SHELL
echo "confirm expected result: '/bin/zsh' or similar"

# make ZSH the default shell
chsh -s $(which zsh)

echo "===== Switch to iTerm2 (or source) to use default shell. ====="
echo "===== Next: Install Oh-My-Zsh? ====="
echo "===== curl -Lks http://bit.do/cfsanderson-oh-my-zsh | bash ====="
