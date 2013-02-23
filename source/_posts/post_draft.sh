#!/bin/bash

if [ $# != 3 ]
then
   usage: <file name> <year> <month>
fi

if [ ! -d ./$2 ]
then
   mkdir $2
fi

if [ ! -d ./$2/$3 ]
then 
   mkdir $3
fi

git mv ./draft/$1 ./$2/$3
git add ./$2/$3/$1
git commit -m "post $1"

git checkout master

git checkout drafts $2
git add ./$2/$3/$1
git commit -m "post $1"
git push

rake generate
rake deploy

