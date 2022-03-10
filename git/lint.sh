#!/bin/bash

echo "Running lints..."
files=`git diff-index --cached --name-only HEAD`

[ -z "$files" ] && exit 0

echo "Rubocop issues:" 
exit_code_rubocop=`rubocop --require rubocop-rails $files --format simple --format html -o tmp/rubo.html`
exit_code_rubocop=$?	

if [ "$exit_code_rubocop" != "0" ]; then
	google-chrome tmp/rubo.html
fi

echo "Reek issues:" 

exit_code_reek=`reek $files  --format html > tmp/reek.html`
exit_code_reek=$?	

if [ "$exit_code_reek" != "0" ]; then
	google-chrome tmp/reek.html
fi

if [[ "$exit_code_rubocop $exit_code_reek" != "0 0" ]]; then
	exit 1
fi