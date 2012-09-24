#!/bin/bash

dir=`pwd`
filename="`date +%Y-%m-%d-$1.markdown`"

rake new_post["$1"]
git checkout drafts
echo "checkout to drafts, remember to checkback"
mv $filename $dir/../_drafts

git add $dir/../_drafts/$filename
git commit -m "new drafts $filename"
