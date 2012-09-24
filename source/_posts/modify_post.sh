#!/bin/bash

git add $1 
git commit -m "$2"
git push 
rake generate
rake deploy

