#!/bin/bash
git init
git add .
git commit -m "a commit"
<<<<<<< 897045f91e414477b79db1787ca6b357e997fa78
git pull --rebase https://zcp:324zq999@github.com/zcp/emulab-rubbos-result.git
=======
>>>>>>> m
git remote add origin https://github.com/zcp/emulab-rubbos-result.git
git push -u https://zcp:324zq999@github.com/zcp/emulab-rubbos-result.git
