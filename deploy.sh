#!/bin/bash

#git checkout production && git merge --no-ff master 
#rake assets:clean && RAILS_ENV=production rake assets:precompile && git add . && git commit -am "assets" 
#wn push && git checkout master

recompile=1;
push=0;
webby=1;
prod=0;
while getopts ":npwhr" opt; do
  case $opt in
    n)
      recompile=0
      ;;
    p)
      push=1
      ;;
    w)
      webby=0
      ;;
    r)
      prod=1
      ;;
    h)
      echo "Usage $0: [-nph] where n: skip compiling, p: push master, h: this help message, w: skip webbynode, r: push to production"
      exit 1;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

git checkout production && git merge --no-ff master
if [ $recompile -eq 1 ]
  then 
    echo "compiling"
    rake assets:clean && RAILS_ENV=production rake assets:precompile && git add . && git commit -am "assets"
  else
    echo "skipping compile"
fi

if [ $webby -eq 1 ]
  then
    echo "pushing to webbynode"
    wn push
  else
    echo "skipping webbynode"
fi

if [ $prod -eq 1 ]
  then
    echo "pushing to production"
    git push
  else
    echo "skipping production"
fi
git checkout master

if [ $push -eq 1 ]
  then
    echo "pushing"
    git push
  else
    echo "skipping push"
fi
