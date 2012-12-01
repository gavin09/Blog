#!/bin/bash

git checkout drafts

git mv ./draft/$1 ./
git add $1
git commit -m "post $1"

git checkout master

git checkout drafts $1
git add $1
git commit -m "post $1"
git push

rake generate
rake deploy

