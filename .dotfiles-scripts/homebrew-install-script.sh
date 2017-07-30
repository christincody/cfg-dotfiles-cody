/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "===== Installing all Brewfile dependencies ====="

brew bundle

echo "===== Next Step: Make ZSH default shell ====="
echo "===== curl -Lks <zsh install script url here> | bash ====="
