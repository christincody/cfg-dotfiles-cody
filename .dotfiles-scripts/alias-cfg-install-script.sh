alias cfg='/usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME'
echo ".cfg-dotfiles" >> .gitignore

xcode-select --install

echo "===== "cfg" alias was created in current shell scope but may need to be added to .bashrc or .vimrc later ====="
echo "===== xcode-select installed ====="
echo "===== may need to source the terminal ====="
echo "===== Next: clone cfg-dotfiles repo ====="
echo "===== 'curl -Lks https://goo.gl/GvdZzq | bash' ====="
