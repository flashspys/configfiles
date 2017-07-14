# configfiles

Add your symlinks to your configfiles to the folder "files". Then add a key to the folder. 
You can create one with `openssl rand 256 > key`. Then add a script to your cron.daily to automatically update your config scripts in the folder:
```
#!/bin/bash
cd /home/user/configfiles
./encrypt.sh
if [[ $(git status -s) == *"files.tar.sha3-512" ]]; then
    git add *
    git commit -m "new config files"
    git push
fi
exit 0
```
