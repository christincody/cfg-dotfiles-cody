# generate new keys
echo "===== after keygen, press enter to leave in default folder ====="
echo "===== go to 'GitHub > settings > SSH and GPG keys' and delete old SSH key and click on 'New SSH Key' button. ====="
echo "===== 'pbcopy < ~/.ssh/id_rsa.pub' to copy the contents of rsa.pub and paste into Github ====="
echo "===== Next Step: Install software from the web and fix all those settings! ====="

ssh-keygen -t rsa -b 4096 -C "calebsanderson@gmail.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa
