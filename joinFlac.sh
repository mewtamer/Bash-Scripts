
#! /bin/bash
for dir in *; do
echo "$dir" >> progress.txt
cd "$dir"
sox * ../"$dir".flac
cd ../
done
