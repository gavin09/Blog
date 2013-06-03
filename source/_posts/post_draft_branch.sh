#!/bin/bash

set -e 
set -x

if [ $# != 1 ]
then
   echo "usage: <file name>"
fi

dir=`pwd`
year="`date +%Y`"
month="`date +%m`"

git add $dir/draft/$1
git commit -m "post $1"

if [ ! -d $dir/$year ]
then 
   mkdir $dir/$year
fi

if [ ! -d $dir/$year/$month ]
then
   mkdir $dir/$year/$month
fi

git mv $dir/draft/$1 $dir/$year/$month
git commit -m "mv draft to $year/$month"
git push

git checkout master

git checkout drafts $dir/$year/$month/$1

git add $dir/$year/$month/$1
git commit -m "post $1"
git push

rake generate 
rake deploy
