#!/bin/bash

echo "Running lints..."
files=`git diff-index --cached --name-only HEAD`
# move to root directory
gitroot

[ -z "$files" ] && exit 0

echo "Linting" 
yarn lint
echo "Testing files: $files" 
yarn test -- --findRelatedTests $files
yarn tsc