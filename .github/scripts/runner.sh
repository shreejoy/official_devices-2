#!/usr/bin/env bash

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

rm -rf master api
git config --global user.email "${GEMAIL}"
git config --global user.name "${GUSER}"
git clone https://github.com/DotOS/official_devices -b master master
git clone https://github.com/DotOS/website_api -b master api
python3 generate_api.py

cd api
# git add .
# CHANGED=$(git diff --numstat --cached | wc -l)
# [[ $CHANGED -eq 0 ]] && exit 0
# git commit -m "generate_api: $(date)"
# git push https://"${GUSER}":"${GPASSWORD}"@github.com/DotOS/website_api master 
