# Using My Dotfiles

The general idea for my dotfiles setup comes from [Nicola Paolucci's](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) post about his method, which is of course built on someone else's. Nicola uses Bitbucket, but I am using shortened links to the raw file versions of shell scripts. The scripts are meant to be installed in order or independently as needed. Each script ends with an `echo` that contains instructions on the next script to `curl` so you can follow the breadcrumbs by copying, pasteing, and running them in succession or come to this repo and cherry-pick the ones you need. These scripts contain my personal preferences so check out the urls for yourself to make sure it is what you want.

Nicola's implementation works great but I changed my git alias to "cfg" instead of his "config" and my bare directory to ".cfg-dotfiles" instead of just ".cfg".

## General Order of Operations  

- Start with some fun...
  - `curl -Lks http://bit.do/cfsanderson`
- Make the "cfg" alias get everything started
  - `curl -Lks http://bit.do/cfsanderson-dotfiles | bash`
    - to see stats on this link visit `http://bit.do/cfsanderson-dotfiles-`
  - follow the breadcrumbs echoed at the end of each subsequent terminal process by copying, pasteing, and running the command.
    - e.g. `===== curl -Lks <shortened url> | bash =====`
  - all shell scripts live here are in the [.dotfiles-scripts](https://github.com/cfsanderson/cfg-dotfiles/tree/master/.dotfiles-scripts) directory of the .cfg-dotfiles repo.
- Clone my [.cfg-dotfiles](https://github.com/cfsanderson/cfg-dotfiles) repo
- [Install Homebrew](https://brew.sh/)
- [Checking for ZSH and make the default shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- Install Oh-My-Zsh
  - This may move existing .zshrc file to .zshrc.pre-oh-my-zsh. Simply rename the files and resource the terminal to load from preferred .zshrc
- Get Powerline fonts for `Cousine for Powerline`
- Install [NVM](https://gist.github.com/cfsanderson/32bc37416c1373c5314d9ea98146fa7c)
- Install [NPM dependencies](https://gist.github.com/cfsanderson/087f5fd991a7b8edff0bcc5e451e2fef)
- Install [RVM](https://gist.github.com/cfsanderson/b4aad70c323058c309d2da5b0e2ffb70)
- Generate a New SSH Key (https://goo.gl/gWKCSX)
  - [generate new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) with that link or this [video by DevMarketer](https://www.youtube.com/watch?v=H5qNpRGB7Qw)
    - `ls -al ~/.ssh` to check for existing ssh keys. If no `id-rsa` or `id-rsa.pub` files are present then proceed.
    - `ssh-keygen -t rsa -b 4096 -C "my@email.com"` will generate new keys.
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
- install `sync-settings` package using credentials from 1password to login, download, and update all packages
- in settings of `glist` package, paste github access token from 1password under "Glist - Atom Package"  


## Install from Web
- [ ] [Garmin Express from website](https://connect.garmin.com/en-US/start/forerunner/express)
- [ ] Postman -  https://app.getpostman.com/app/download/osx64



## Fresh Install TODOs
- [ ] Make a "Screenshots" folder in Google Drive and change default location for screenshots to that directory
  - [ ] `mkdir Google\ Drive/Screenshots`
  - [ ] `defaults write com.apple.screencapture location /Users/caleb/Google\ Drive/Screenshots`
  - [ ] `killall SystemUIServer`
