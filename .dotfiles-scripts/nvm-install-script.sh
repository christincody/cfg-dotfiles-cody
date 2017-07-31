curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install node
command -v nvm

echo "===== should output 'nvm' ====="
echo ""
echo ""
echo ""
echo "===== Next: install NPM dependencies? ====="
echo "===== curl -Lks http://bit.do/cfsanderson-npm | bash ====="
