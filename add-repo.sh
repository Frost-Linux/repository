#!/bin/sh

echo "Cleaning up old database.." 
rm $1/comet.*

echo "Generating new database and signing it.."
cd $1
repo-add -s comet.db.tar.zst *.pkg.tar.zst

echo "Done.."
cd ..

git add .
echo "Enter commit message:" 
read input

git commit -m $input
git push
