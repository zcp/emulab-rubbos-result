#!/bin/bash
git init
git add .
git commit -m "a commit"
git pull --rebase
git remote add origin https://github.com/zcp/emulab-rubbos-result.git
git push -u https://zcp:324zq999@github.com/zcp/emulab-rubbos-result.git
