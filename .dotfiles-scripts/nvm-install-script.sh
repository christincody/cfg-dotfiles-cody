curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm install node
command -v nvm

echo "===== last command should have output simply 'nvm' ====="
echo ""
echo ""
echo ""
echo "=====         Next: install NPM dependencies?        ====="
echo "===== curl -Lks http://bit.do/cfsanderson-npm | bash ====="
