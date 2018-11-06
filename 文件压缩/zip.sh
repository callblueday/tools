#! /bin/bash

myPath='zip'
rm -rf $myPath

if [ ! -d "$myPath" ]; then
mkdir "$myPath"
fi

for dir in *
do
    if [ -d $dir ] && [ "$dir" != "$myPath" ]
    then
    zip $myPath/$dir.zip $dir
    fi
done