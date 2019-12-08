#!/bin/bash

DIR="${1:-./}"

for F in `find "$DIR" -type f | grep -v '/.git/'`
do
    if [ `file -b --mime-type "$F" | sed 's|/.*||'` == 'text' ]
    then
        sed -i 's/[[:space:]]*$//' "$F"
    fi
done
