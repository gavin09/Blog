#!/bin/bash

dir=`pwd`

mv $dir/$1 $dir/../
git add $dir/../$1
git commit -m "post drafts $1"

cd $dir/../
git checkout master
git checkout drafts $dir/$1

git add $dir/$1
git commit -m "post drafts $1"

rake generate
rake deploy
