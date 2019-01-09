#!/bin/bash
sudo rm -r .git
git init
git add .
git commit -m "a commit"
git remote add origin https://github.com/zcp/emulab-rubbos-result.git
git pull --rebase origin master
git push -u https://zcp:324zq999@github.com/zcp/emulab-rubbos-result.git

