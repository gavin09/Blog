#!/bin/bash

if [ $# != 1] 
then 
   echo "usage: <filename>"
fi

dir=`pwd`
filename="`date +%Y-%m-%d-$1.markdown`"

git checkout drafts
rake new_post["$1"]

echo "checkout to drafts, remember to checkback"

mv $dir/$filename $dir/draft
git add $dir/draft/$filename
git commit -m "new drafts $filename"

