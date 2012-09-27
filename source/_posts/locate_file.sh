#!/bin/bash

sudo updatedb
locate "conflicted copy"  | (

    IFS='
'   read -d '' -a arr

# Do all accessing and processing of arr here

for ((i=0;i<${#arr[@]};i++))
do
        rm  "${arr[i]}"
done


) # arr goes out of scope here
