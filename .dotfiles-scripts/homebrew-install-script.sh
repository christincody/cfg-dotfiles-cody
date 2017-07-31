/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "===== Installing all Brewfile dependencies ====="

brew bundle

echo ""
echo ""
echo ""
echo "===== Next: Make ZSH default shell? ====="
echo "===== curl -Lks http://bit.do/cfsanderson-zsh | bash ====="
