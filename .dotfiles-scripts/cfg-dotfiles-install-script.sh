git clone --bare https://github.com/cfsanderson/cfg-dotfiles.git $HOME/.cfg-dotfiles

function cfg {
   /usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME $@
   echo "===== cfg function has run ====="
}

mkdir -p .cfg-backup
cfg checkout
if [ $? = 0 ]; then
  echo "===== checked out cfg =====";
  else
    echo "===== backing up pre-existing dot files =====";
    cfg checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .cfg-backup/{}
fi;
cfg checkout
cfg config status.showUntrackedFiles no

echo "===== Step 2: Install Homebrew ====="
echo "===== 'curl -Lks <homebrew install url> | bash' ====="
echo "===== check to make sure terminal is running correctly - resource ====="

