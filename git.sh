#!/bin/sh
# Commit mesage

if [ -z "$1" ]; then
 echo "Submit a commit message you uncultured swine!"
 exit
fi
# !!!!!!!!!!!!!!!!!!!!!!!!!!!
branch="master"
# !!!!!!!!!!!!!!!!!!!!!!!!!!!

BUNDLE_GEMFILE='./website/Gemfile' bundle exec jekyll build --source ./website

git add .
git commit -m "$branch - $1"
git push origin $branch
