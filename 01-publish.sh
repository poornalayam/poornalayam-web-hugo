#!/bin/bash

# Clean public/ folder, run hugo, git commit and push to github pages


# Clean and build the project in public/
rm -rf public/*
hugo

cd public
# Restore the CNAME file, it's used for custom domain hosting on GitHub Pages
git checkout CNAME
git status

git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]; then
    msg="$1"
fi

git commit -m "$msg"

git push
