alias cfg='/usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME'
echo ".cfg-dotfiles" >> .gitignore

echo "===== "cfg" alias was created in current shell scope but may need to be added to .bashrc or .vimrc later ====="
echo "===== Next: clone cfg-dotfiles repo ====="
echo "===== 'curl -Lks <homebrew install url> | bash' ====="
