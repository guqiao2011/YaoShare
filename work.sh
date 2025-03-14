#!/bin/bash
hexo g
hexo d
git add .
if [ ! -n "$1" ];then
    git commit -m "update"
else
    git commit -m "$1"
fi
git push
