# install stable version
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# loads rvm
source ~/.rvm/scripts/rvm

# test with
type rvm | head -n 1

echo "should output 'rvm is a function'"

# shows all available versions of ruby
rvm list known

# show folder where versions are stored
which ruby

echo "===== Next Step: Install new SSH keys ====="
echo "===== curl -Lks <next url here> | bash ====="
