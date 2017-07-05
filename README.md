# Instructions for using my dotfiles

The general idea for my dotfiles setup comes from [Nicola Paolucci's](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) post about it. Instead of bitbucket, I am using Google shortened urls that link to shell scripts that are stored in raw public gists. The scripts are meant to be installed in order and each one contains instructions on the next link script to curl so that you can follow the breadcrumbs entirely or check out the code snippets at the urls for yourself and copy/paste the parts you want. It all gets kicked off with this repo though.  

I changed my alias to "dotconfig" instead of Nicola's "config" and my bare directory to ".cfg-dotfiles" instead of just ".cfg".

The general order of operations is...  

## make the "dotconfig" alias
- `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
- `echo ".cfg-dotfiles" >> .gitignore`  


## Install My [.cfg-dotfiles](https://github.com/cfsanderson/cfg-dotfiles)
- `curl -Lks https://goo.gl/7xGC2L | /bin/bash`  


## [Install Homebrew](https://brew.sh/)
- https://goo.gl/5LyA5C
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew bundle` should install all dependencies from Brewfile
  - see https://github.com/Homebrew/homebrew-bundle for more info  


## [Checking for ZSH and make the default shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- https://goo.gl/fnswYk
- `zsh --version` to confirm. Expected result: `zsh 4.3.9` or more recent
- `echo $SHELL` from a new terminal to confirm expected result: `/bin/zsh` or similar
- `chsh -s $(which zsh)` make it the default shell
- Log out and login back again to use your new default shell.
- `echo $SHELL` expected result: `/bin/zsh` or similar.  

## Install Oh-My-Zsh
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- https://goo.gl/rysF9G
- This may move existing .zshrc file to .zshrc.pre-oh-my-zsh. Simply rename the files and resource the terminal to load from preferred .zshrc  


## Get Powerline fonts for `Cousine for Powerline`

- install script at https://goo.gl/pceWrc
  ```
  git clone https://github.com/powerline/fonts.git
  cd fonts
  ./install.sh
  cd ..
  rm -rf fonts
  ```
(comments are fine)  


## Install [NVM](https://gist.github.com/cfsanderson/32bc37416c1373c5314d9ea98146fa7c) from script  
- https://goo.gl/PKx3eV

## Install [NPM dependencies](https://gist.github.com/cfsanderson/087f5fd991a7b8edff0bcc5e451e2fef) from script  
- https://goo.gl/VkzXbb


## Install [RVM](https://gist.github.com/cfsanderson/b4aad70c323058c309d2da5b0e2ffb70) from script  
- https://goo.gl/P473b2
- RVM wasn't working right so I added `rvm get stable --auto-dotfiles` per the message instructions and now it is working fine.
- TODO - change install script to add `\curl -sSL https://get.rvm.io | bash -s stable --ruby` to first line.


## Generate a New SSH Key (https://goo.gl/gWKCSX)
  - [generate new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) with that link or this [video by DevMarketer](https://www.youtube.com/watch?v=H5qNpRGB7Qw)
    - `ls -al ~/.ssh` to check for existing ssh keys. If no `id-rsa` or `id-rsa.pub` files are present then proceed.
    - `ssh-keygen -t rsa -b 4096 -C "calebsanderson@gmail.com"` will generate new keys.
      - `-t` is type of `rsa`
      - `-b` is for bytes = 4096 and is specific
      - `-C` is for email
    - on following file location prompt just press enter to leave it in default folder
    - enter passphrase (same as computer login)
    - will generate the keys (public and private) in own files and show random art.
    - `eval "$(ssh-agent -s)"`
    - `ssh-add ~/.ssh/id_rsa`
    - follow with password (the same as computer login)
  - go to **GitHub > settings > SSH and GPG keys** and delete old SSH key and click on "New SSH Key" button.
  - back in terminal run `pbcopy < ~/.ssh/id_rsa.pub` which will copy the contents of the public key
    - (didn't work for me so I opened the file and copied the contents of the file manually)
  - back in GitHub paste into the key field and save in GitHub - will ask to re-enter GH password (from 1Password)  


## Atom
- install `sync-settings` package
- use credentials from 1password to login, download, and update all packages
- in settings of `glist` package, paste github access token from 1password under "Glist - Atom Package"  


## Install from Web
- [ ] [Garmin Express from website](https://connect.garmin.com/en-US/start/forerunner/express)
- [ ] Postman -  https://app.getpostman.com/app/download/osx64
- [ ] Amazon Music

