#! /bin/bash

inputPath='input'
outPath='zip'

rm -rf $outPath

if [ ! -d "$outPath" ]; then
mkdir "$outPath"
fi

cd $inputPath &&

for dir in `find * -type d`
do
    if [ "$dir" != "$outPath" ] && [ "$dir" != "input" ]
    then
    zip ../$outPath/$dir.zip ./$dir/*
    fi
done