#!/bin/bash

dir=`pwd`

set -x
mv $1 ../
git add ../$1
git commit -m "post drafts $1"

cd $dir/../

new_dir=`pwd`
git checkout master
git checkout drafts $new_dir/$1

git add $new_dir/$1
git commit -m "post drafts $1"

rake generate
rake deploy
