#!/bin/bash

dir=`pwd`
filename="`date +%Y-%m-%d-$1.markdown`"

git checkout drafts
rake new_post["$1"]

echo "checkout to drafts, remember to checkback"

git add $dir/$filename
git commit -m "new drafts $filename"

mv $dir/$filename $dir/draft
